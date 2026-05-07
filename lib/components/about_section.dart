import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/data.dart';

class AboutSection extends StatelessComponent {
  const AboutSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'about', [
      // Section header
      div(classes: 'section-header fade-in', [
        RawText(
          '<svg class="section-icon" xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="8" r="5"/><path d="M20 21a8 8 0 1 0-16 0"/></svg>',
        ),
        h2([Component.text('About Me')]),
        div(classes: 'section-line', []),
      ]),

      div(classes: 'about-grid', [
        // About text
        div(classes: 'about-text fade-in', attributes: {'data-delay': '100'}, [
          p([Component.text(PersonalInfo.about)]),
          p([
            Component.text(
              'My approach focuses on writing clean, maintainable code and architecting scalable mobile and web solutions. I believe that great software is built at the intersection of technical excellence and deep empathy for the user.',
            ),
          ]),
        ]),

        // Skills card
        div(classes: 'skill-card fade-in', attributes: {'data-delay': '200'}, [
          div(classes: 'skill-card-header', [
            RawText(
              '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="4 17 10 11 4 5"/><line x1="12" x2="20" y1="19" y2="19"/></svg>',
            ),
            Component.text(' Technical Arsenal'),
          ]),
          div(classes: 'skills-chips', [
            for (int i = 0; i < SkillsData.skills.length; i++)
              span(classes: 'skill-chip', [Component.text(SkillsData.skills[i])]),
          ]),
        ]),
      ]),
    ]);
  }
}
