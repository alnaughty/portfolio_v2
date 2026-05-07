import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/data.dart';

class HeroSection extends StatelessComponent {
  const HeroSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'hero', [
      // Animated background blobs
      div(classes: 'hero-bg-blob-1', []),
      div(classes: 'hero-bg-blob-2', []),

      div(classes: 'hero-inner', [
        // Left column: Text
        div(classes: 'hero-text fade-in', attributes: {'data-delay': '100'}, [
          // Availability badge
          div(classes: 'availability-badge', [
            div(classes: 'pulse-dot-wrap', [
              div(classes: 'pulse-ping', []),
              div(classes: 'pulse-core', []),
            ]),
            Component.text('Available for new opportunities'),
          ]),

          // Headline
          h1(classes: 'hero-title', [
            Component.text("Hi, I'm ${PersonalInfo.name}."),
            br(),
            span(classes: 'muted', [Component.text(PersonalInfo.role)]),
            Component.text('.'),
          ]),

          // Tagline
          p(classes: 'hero-tagline', [Component.text(PersonalInfo.tagline)]),

          // CTA Buttons
          div(classes: 'hero-actions', [
            a(href: '#projects', classes: 'btn-primary', [
              RawText(
                '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/></svg>',
              ),
              Component.text(' View My Work'),
            ]),
            a(href: '#contact', classes: 'btn-secondary', [
              RawText(
                '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="20" height="16" x="2" y="4" rx="2"/><path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/></svg>',
              ),
              Component.text(' Contact Me'),
            ]),
          ]),

          // Social links
          div(classes: 'social-links', [
            a(href: PersonalInfo.github, target: Target.blank, [
              RawText(
                '<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 22v-4a4.8 4.8 0 0 0-1-3.02c3.14-.35 6.5-1.4 6.5-7a4.6 4.6 0 0 0-1.39-3.2 4.2 4.2 0 0 0-.14-3.2s-1.12-.35-3.5 1.25a12.1 12.1 0 0 0-6.2 0C6.62 3.25 5.5 3.6 5.5 3.6a4.2 4.2 0 0 0-.14 3.2A4.6 4.6 0 0 0 4 12.8c0 5.58 3.36 6.63 6.4 7-.34.3-.65.8-.75 1.5-.2.1-.8.3-2.2-.8-.4-.6-1-.9-1-.9-.6-.1-.1-.1-.1-.1.7.1 1.2.6 1.2.6.6 1.1 1.8 1.1 2.8.8v2.5"/><path d="M9 21c-3 1-5-1-5-1"/></svg>',
              ),
              span(classes: 'sr-only', [Component.text('GitHub')]),
            ]),
            a(href: PersonalInfo.linkedin, target: Target.blank, [
              RawText(
                '<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 8a6 6 0 0 1 6 6v7h-4v-7a2 2 0 0 0-2-2 2 2 0 0 0-2 2v7h-4v-7a6 6 0 0 1 6-6z"/><rect width="4" height="12" x="2" y="9"/><circle cx="4" cy="4" r="2"/></svg>',
              ),
              span(classes: 'sr-only', [Component.text('LinkedIn')]),
            ]),
          ]),
        ]),

        // Right column: Profile image
        div(
          classes: 'hero-image-wrap fade-in',
          attributes: {'data-delay': '300'},
          [
            div(classes: 'hero-image-container', [
              // Orbit rings
              div(classes: 'orbit-ring-1', []),
              div(classes: 'orbit-ring-2', []),

              // Profile photo
              div(classes: 'profile-photo', [
                img(
                  src: PersonalInfo.profileImage,
                  alt: PersonalInfo.name,
                  attributes: {'loading': 'lazy'},
                ),
              ]),

              // Floating badges
              div(classes: 'float-badge float-badge-1', [
                RawText(
                  '<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="14" height="20" x="5" y="2" rx="2" ry="2"/><path d="M12 18h.01"/></svg>',
                ),
              ]),
              div(classes: 'float-badge float-badge-2', [
                RawText(
                  '<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="4 17 10 11 4 5"/><line x1="12" x2="20" y1="19" y2="19"/></svg>',
                ),
              ]),
            ]),
          ],
        ),
      ]),

      // Scroll indicator
      div(classes: 'scroll-indicator fade-in', attributes: {'data-delay': '700'}, [
        RawText(
          '<svg xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="6 9 12 15 18 9"/></svg>',
        ),
      ]),
    ]);
  }
}
