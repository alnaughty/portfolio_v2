import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/data.dart';

class ExperienceSection extends StatelessComponent {
  const ExperienceSection({super.key});

  @override
  Component build(BuildContext context) {
    return div(id: 'experience', [
      div(classes: 'experience-inner', [
        // Section header
        div(classes: 'section-header fade-in', [
          RawText(
            '<svg class="section-icon" xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="20" height="14" x="2" y="7" rx="2" ry="2"/><path d="M16 21V5a2 2 0 0 0-2-2h-4a2 2 0 0 0-2 2v16"/></svg>',
          ),
          h2([Component.text("Where I've Worked")]),
          div(classes: 'section-line', []),
        ]),

        div(classes: 'experience-list', [
          for (int i = 0; i < ExperienceData.experience.length; i++)
            _buildExpItem(ExperienceData.experience[i], i),
        ]),
      ]),
    ]);
  }

  Component _buildExpItem(Experience job, int index) {
    return div(
      classes: 'exp-item fade-in',
      attributes: {'data-delay': '${index * 100}'},
      [
        div(classes: 'exp-grid', [
          div(classes: 'exp-period', [Component.text(job.period)]),
          div(classes: 'exp-content', [
            div(classes: 'exp-role', [Component.text(job.role)]),
            div(classes: 'exp-company', [Component.text(job.company)]),
            p(classes: 'exp-desc', [Component.text(job.description)]),
          ]),
        ]),
      ],
    );
  }
}
