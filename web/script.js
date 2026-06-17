// =====================================================================
// PORTFOLIO SCRIPT - Interactive Atom Background + UI Interactions
// =====================================================================

document.addEventListener('DOMContentLoaded', () => {

  // ----------------------------------------------------------------
  // 1. INTERACTIVE ATOM CANVAS BACKGROUND
  // ----------------------------------------------------------------
  const canvas = document.getElementById('atom-canvas');
  if (canvas) {
    const ctx = canvas.getContext('2d');
    let atomsArray = [];
    let time = 0;
    let animId;

    const mouse = { x: -2000, y: -2000, radius: 220 };

    const handleMouseMove = (e) => {
      mouse.x = e.clientX;
      mouse.y = e.clientY;
    };

    const handleMouseOut = () => {
      mouse.x = -2000;
      mouse.y = -2000;
    };

    window.addEventListener('mousemove', handleMouseMove);
    window.addEventListener('mouseout', handleMouseOut);

    class Atom {
      constructor() {
        this.x = Math.random() * canvas.width;
        this.y = Math.random() * canvas.height;
        this.vx = (Math.random() - 0.5) * 0.45;
        this.vy = (Math.random() - 0.5) * 0.45;
        this.scale = Math.random() * 1.4 + 0.35;

        // Nucleus particles
        this.nucleusParticles = [];
        const n = Math.floor(Math.random() * 5) + 3;
        for (let i = 0; i < n; i++) {
          this.nucleusParticles.push({
            angle: Math.random() * Math.PI * 2,
            dist: Math.random() * 2.5 * this.scale,
            baseHue: Math.random() > 0.5 ? 24 : 38,
            timeOffset: Math.random() * 10,
          });
        }

        this.baseOrbitSize = (Math.random() * 14 + 13) * this.scale;
        this.currentOrbitSize = this.baseOrbitSize;
        this.tilts = [0, Math.PI / 3, (Math.PI * 2) / 3];
        this.electronAngles = [
          Math.random() * Math.PI,
          Math.random() * Math.PI,
          Math.random() * Math.PI,
        ];
        this.electronBaseHues = [18, 28, 42];
        this.baseSpinSpeed = (Math.random() * 0.02 + 0.008) * (1 / this.scale);
        this.spinSpeed = this.baseSpinSpeed;
      }

      update() {
        this.x += this.vx;
        this.y += this.vy;
        if (this.x > canvas.width || this.x < 0) this.vx = -this.vx;
        if (this.y > canvas.height || this.y < 0) this.vy = -this.vy;

        const dx = mouse.x - this.x;
        const dy = mouse.y - this.y;
        const dist = Math.sqrt(dx * dx + dy * dy);

        let targetOrbit = this.baseOrbitSize;
        let targetSpin = this.baseSpinSpeed;

        if (dist < mouse.radius && dist > 0) {
          const inf = 1 - dist / mouse.radius;
          this.x -= (dx / dist) * inf * 1.4;
          this.y -= (dy / dist) * inf * 1.4;
          targetOrbit = this.baseOrbitSize + inf * 22 * this.scale;
          targetSpin = this.baseSpinSpeed + inf * 0.12;
        }

        this.currentOrbitSize += (targetOrbit - this.currentOrbitSize) * 0.1;
        this.spinSpeed += (targetSpin - this.spinSpeed) * 0.1;
        for (let i = 0; i < 3; i++) {
          this.electronAngles[i] += this.spinSpeed;
        }
      }

      draw(t) {
        const op = 0.38;

        // Nucleus
        ctx.save();
        ctx.translate(this.x, this.y);
        ctx.rotate(t * this.spinSpeed * 0.18);
        this.nucleusParticles.forEach((p) => {
          const nx = Math.cos(p.angle) * p.dist;
          const ny = Math.sin(p.angle) * p.dist;
          const hue = p.baseHue + Math.sin(t * 2 + p.timeOffset) * 22;
          ctx.beginPath();
          ctx.arc(nx, ny, 1.4 * this.scale, 0, Math.PI * 2);
          ctx.fillStyle = `hsla(${hue},82%,60%,${op * 2.4})`;
          ctx.fill();
        });
        ctx.restore();

        // Orbits + electrons
        for (let i = 0; i < 3; i++) {
          ctx.save();
          ctx.translate(this.x, this.y);
          ctx.rotate(this.tilts[i]);

          const orbitHue = 24 + Math.sin(t + i) * 12;

          ctx.beginPath();
          ctx.ellipse(0, 0, this.currentOrbitSize, this.currentOrbitSize * 0.28, 0, 0, Math.PI * 2);
          ctx.strokeStyle = `hsla(${orbitHue},78%,52%,${op * 0.28})`;
          ctx.lineWidth = Math.max(0.5, 0.9 * this.scale);
          ctx.stroke();

          const ex = Math.cos(this.electronAngles[i]) * this.currentOrbitSize;
          const ey = Math.sin(this.electronAngles[i]) * (this.currentOrbitSize * 0.28);
          const eHue = this.electronBaseHues[i] + Math.cos(t * 3 + i) * 15;

          ctx.beginPath();
          ctx.arc(ex, ey, 1.6 * this.scale, 0, Math.PI * 2);
          ctx.fillStyle = `hsla(${eHue},90%,65%,${op * 3.2})`;
          ctx.shadowBlur = 7 * this.scale;
          ctx.shadowColor = `hsla(${eHue},90%,65%,1)`;
          ctx.fill();
          ctx.shadowBlur = 0;
          ctx.restore();
        }
      }
    }

    function drawBonds(t) {
      for (let a = 0; a < atomsArray.length; a++) {
        for (let b = a + 1; b < atomsArray.length; b++) {
          const dx = atomsArray[a].x - atomsArray[b].x;
          const dy = atomsArray[a].y - atomsArray[b].y;
          const d = Math.sqrt(dx * dx + dy * dy);
          if (d < 100) {
            const op = (1 - d / 100) * 0.13;
            const h = 28 + Math.sin(t * 1.4 + d * 0.01) * 12;
            ctx.strokeStyle = `hsla(${h},78%,55%,${op})`;
            ctx.lineWidth = 0.8;
            ctx.beginPath();
            ctx.moveTo(atomsArray[a].x, atomsArray[a].y);
            ctx.lineTo(atomsArray[b].x, atomsArray[b].y);
            ctx.stroke();
          }
        }
      }
    }

    function initAtoms() {
      atomsArray = [];
      const count = Math.floor((canvas.width * canvas.height) / 32000);
      for (let i = 0; i < count; i++) atomsArray.push(new Atom());
    }

    function resizeCanvas() {
      canvas.width = window.innerWidth;
      canvas.height = window.innerHeight;
      initAtoms();
    }

    function animate() {
      time += 0.018;
      ctx.clearRect(0, 0, canvas.width, canvas.height);
      atomsArray.forEach((a) => { a.update(); a.draw(time); });
      drawBonds(time);
      animId = requestAnimationFrame(animate);
    }

    window.addEventListener('resize', resizeCanvas);
    resizeCanvas();
    animate();
  }

  // ----------------------------------------------------------------
  // 2. NAVBAR SCROLL BEHAVIOR
  // ----------------------------------------------------------------
  const navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY > 50) {
        navbar.classList.add('scrolled');
      } else {
        navbar.classList.remove('scrolled');
      }
    });
  }

  // ----------------------------------------------------------------
  // 3. FADE-IN ON SCROLL (IntersectionObserver)
  // ----------------------------------------------------------------
  const fadeEls = document.querySelectorAll('.fade-in');
  if (fadeEls.length) {
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          if (entry.isIntersecting) {
            const el = entry.target;
            const delay = el.dataset.delay || 0;
            setTimeout(() => el.classList.add('visible'), parseInt(delay));
            observer.unobserve(el);
          }
        });
      },
      { threshold: 0.1, rootMargin: '0px 0px -50px 0px' }
    );
    fadeEls.forEach((el) => observer.observe(el));
  }

  // ----------------------------------------------------------------
  // 4. MOBILE MENU
  // ----------------------------------------------------------------
  const menuBtn = document.getElementById('mobile-menu-btn');
  const mobileMenu = document.getElementById('mobile-menu');
  const menuIconOpen = document.getElementById('menu-icon-open');
  const menuIconClose = document.getElementById('menu-icon-close');

  if (menuBtn && mobileMenu) {
    menuBtn.addEventListener('click', () => {
      const isOpen = mobileMenu.classList.toggle('open');
      menuIconOpen.style.display = isOpen ? 'none' : 'block';
      menuIconClose.style.display = isOpen ? 'block' : 'none';
    });

    mobileMenu.querySelectorAll('a').forEach((link) => {
      link.addEventListener('click', () => {
        mobileMenu.classList.remove('open');
        menuIconOpen.style.display = 'block';
        menuIconClose.style.display = 'none';
      });
    });
  }

  // ----------------------------------------------------------------
  // 5. CONTACT FORM HANDLING
  // ----------------------------------------------------------------
  const form = document.getElementById('contact-form');
  const submitBtn = document.getElementById('form-submit-btn');
  const submitText = document.getElementById('submit-text');
  const submitSpinner = document.getElementById('submit-spinner');
  const submitCheck = document.getElementById('submit-check');

  if (form) {
    form.addEventListener('submit', (e) => {
      e.preventDefault();

      // Show loading state
      submitBtn.disabled = true;
      submitText.textContent = 'Sending...';
      if (submitSpinner) submitSpinner.style.display = 'inline-block';
      if (submitCheck) submitCheck.style.display = 'none';

      const actionUrl = form.getAttribute('action') || 'https://formsubmit.co/ajax/official.zeuscajurao@gmail.com';
      const name = document.getElementById('contact-name').value;
      const email = document.getElementById('contact-email').value;
      const message = document.getElementById('contact-message').value;

      fetch(actionUrl, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify({
          name: name,
          email: email,
          message: message
        })
      })
      .then(response => response.json())
      .then(data => {
        if (data.success === 'true' || data.success === true) {
          submitBtn.classList.add('success');
          submitText.textContent = 'Message Sent!';
          if (submitSpinner) submitSpinner.style.display = 'none';
          if (submitCheck) submitCheck.style.display = 'inline-block';
          form.reset();
        } else {
          submitText.textContent = 'Error sending!';
          if (submitSpinner) submitSpinner.style.display = 'none';
          submitBtn.disabled = false;
        }

        setTimeout(() => {
          submitBtn.classList.remove('success');
          submitBtn.disabled = false;
          submitText.textContent = 'Send Message';
          if (submitCheck) submitCheck.style.display = 'none';
        }, 5000);
      })
      .catch(error => {
        console.error('Error:', error);
        submitText.textContent = 'Error sending!';
        if (submitSpinner) submitSpinner.style.display = 'none';
        submitBtn.disabled = false;

        setTimeout(() => {
          submitBtn.classList.remove('success');
          submitBtn.disabled = false;
          submitText.textContent = 'Send Message';
          if (submitCheck) submitCheck.style.display = 'none';
        }, 5000);
      });
    });
  }

  // ----------------------------------------------------------------
  // 6. HERO PARALLAX & MOUSE-FOLLOWING BLOBS
  // ----------------------------------------------------------------
  const heroImage = document.querySelector('.hero-image-container');
  const heroBadges = document.querySelectorAll('.float-badge');
  const blob1 = document.querySelector('.hero-bg-blob-1');
  const blob2 = document.querySelector('.hero-bg-blob-2');
  const heroSection = document.getElementById('hero');

  if (heroSection) {
    window.addEventListener('mousemove', (e) => {
      const { clientX, clientY } = e;
      const { innerWidth, innerHeight } = window;
      
      const x = (clientX - innerWidth / 2) / 35;
      const y = (clientY - innerHeight / 2) / 35;
      
      // Move hero image slightly
      if (heroImage) {
        heroImage.style.transform = `translate(${x}px, ${y}px)`;
      }
      
      // Move floating badges in opposite direction for depth
      heroBadges.forEach((badge, i) => {
        const factor = (i + 1) * 1.5;
        badge.style.transform = `translate(${-x * factor}px, ${-y * factor}px)`;
      });

      // Move background blobs for parallax effect
      if (blob1) blob1.style.transform = `translate(${x * 0.5}px, ${y * 0.5}px)`;
      if (blob2) blob2.style.transform = `translate(${-x * 0.8}px, ${-y * 0.2}px)`;
    });
  }

});
