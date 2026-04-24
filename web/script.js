document.addEventListener('DOMContentLoaded', () => {
  // 1. Intersection Observer for fade-ups
  const observerOptions = {
    threshold: 0.12,
    rootMargin: '0px 0px -50px 0px'
  };

  const observer = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        
        // If it's the skills section, trigger the progress bars
        if (entry.target.id === 'skills') {
          const fills = document.querySelectorAll('.p-fill');
          fills.forEach((fill, idx) => {
            setTimeout(() => {
              fill.classList.add('visible');
            }, idx * 120); // 120ms stagger
          });
        }
      }
    });
  }, observerOptions);

  document.querySelectorAll('.fade-up').forEach(el => observer.observe(el));

  // 2. Parallax & Auto-float Logic
  const hero = document.getElementById('hero');
  const sceneElements = [
    { el: document.getElementById('el0'), depth: 0.035, sp: 0.9 },
    { el: document.getElementById('el1'), depth: 0.055, sp: 1.1 },
    { el: document.getElementById('el2'), depth: 0.025, sp: 1.3 },
    { el: document.getElementById('el3'), depth: 0.07,  sp: 0.8 },
    { el: document.getElementById('el4'), depth: 0.06,  sp: 1.0 },
    { el: document.getElementById('ring'), depth: -0.02, sp: 0.5 }
  ];

  const cursorRing = document.getElementById('cursor-ring');
  const cursorDot = document.getElementById('cursor-dot');
  
  // State
  let isMouseInHero = false;
  let isMobile = window.innerWidth <= 640;
  
  // Parallax Targets
  let targetNormX = 0.5;
  let targetNormY = 0.5;
  let currentNormX = 0.5;
  let currentNormY = 0.5;
  
  // Cursor Targets
  let mouseX = window.innerWidth / 2;
  let mouseY = window.innerHeight / 2;
  let cursorRingX = mouseX;
  let cursorRingY = mouseY;
  let cursorDotX = mouseX;
  let cursorDotY = mouseY;

  // Time for auto-float
  let autoT = 0;
  let mobileT = 0;
  
  let animationFrameId = null;

  // Orbit rotation
  let orbitRot = 0;

  function lerp(start, end, amt) {
    return (1 - amt) * start + amt * end;
  }

  // Update layout state on resize
  window.addEventListener('resize', () => {
    isMobile = window.innerWidth <= 640;
  });

  // Mouse event listeners for hero
  if (hero) {
    hero.addEventListener('mouseenter', (e) => {
      if (isMobile) return;
      isMouseInHero = true;
      cursorRing.style.opacity = '1';
      cursorDot.style.opacity = '1';
      
      // Instantly set cursor position to avoid flying from center
      cursorRingX = cursorDotX = mouseX = e.clientX;
      cursorRingY = cursorDotY = mouseY = e.clientY;
    });

    hero.addEventListener('mousemove', (e) => {
      if (isMobile) return;
      mouseX = e.clientX;
      mouseY = e.clientY;
      
      const rect = hero.getBoundingClientRect();
      targetNormX = (e.clientX - rect.left) / rect.width;
      targetNormY = (e.clientY - rect.top) / rect.height;
    });

    hero.addEventListener('mouseleave', () => {
      if (isMobile) return;
      isMouseInHero = false;
      cursorRing.style.opacity = '0';
      cursorDot.style.opacity = '0';
    });
  }

  function loop() {
    if (isMobile) {
      // Mobile card cluster float (ignores mouse)
      mobileT += 0.012;
      sceneElements.forEach((item, index) => {
        if (!item.el || item.el.id === 'el3' || item.el.id === 'ring') return; // hidden on mobile
        
        const dx = 15;
        const dy = 15;
        const sp = item.sp;
        const baseRot = index === 0 ? -6 : index === 1 ? -3 : index === 2 ? 5 : 4;
        
        const tx = dx * Math.sin(mobileT * sp);
        const ty = dy * Math.cos(mobileT * sp * 0.8);
        const rot = baseRot + Math.sin(mobileT * sp * 0.6) * 2.5;
        
        item.el.style.transform = `translate(${tx}px, ${ty}px) rotate(${rot}deg)`;
      });
    } else {
      // Desktop logic
      if (isMouseInHero) {
        // Mouse parallax
        currentNormX = lerp(currentNormX, targetNormX, 0.09);
        currentNormY = lerp(currentNormY, targetNormY, 0.09);
        
        // Custom cursor
        cursorRingX = lerp(cursorRingX, mouseX, 0.18);
        cursorRingY = lerp(cursorRingY, mouseY, 0.18);
        cursorDotX = lerp(cursorDotX, mouseX, 0.18);
        cursorDotY = lerp(cursorDotY, mouseY, 0.18);
        
        if (cursorRing && cursorDot) {
          cursorRing.style.transform = `translate(calc(${cursorRingX}px - 50%), calc(${cursorRingY}px - 50%))`;
          cursorDot.style.transform = `translate(calc(${cursorDotX}px - 50%), calc(${cursorDotY}px - 50%))`;
        }
      } else {
        // Auto sine-wave float
        autoT += 0.007;
        targetNormX = 0.5 + Math.sin(autoT * 0.9) * 0.26;
        targetNormY = 0.5 + Math.cos(autoT * 1.1) * 0.20;
        
        currentNormX = lerp(currentNormX, targetNormX, 0.018);
        currentNormY = lerp(currentNormY, targetNormY, 0.018);
      }

      // Apply transforms
      const tx = (currentNormX - 0.5) * 1200;
      const ty = (currentNormY - 0.5) * 800;

      orbitRot += (360 / (18 * 60)); // ~360deg per 18s at 60fps
      if (orbitRot >= 360) orbitRot -= 360;

      sceneElements.forEach(item => {
        if (!item.el) return;
        if (item.el.id === 'ring') {
          const shiftX = tx * item.depth * 0.5;
          const shiftY = ty * item.depth * 0.5;
          item.el.style.transform = `translate(${shiftX}px, ${shiftY}px) rotate(${orbitRot}deg)`;
        } else {
          item.el.style.transform = `translate(${tx * item.depth}px, ${ty * item.depth}px)`;
        }
      });
    }

    animationFrameId = requestAnimationFrame(loop);
  }

  // Start loop
  loop();
});
