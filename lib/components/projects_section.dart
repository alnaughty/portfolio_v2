import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/data.dart';

class ProjectsSection extends StatelessComponent {
  const ProjectsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'projects', [
      // Section header
      div(classes: 'section-header fade-in', [
        RawText(
          '<svg class="section-icon" xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="16 18 22 12 16 6"/><polyline points="8 6 2 12 8 18"/></svg>',
        ),
        h2([Component.text('Featured Projects')]),
        div(classes: 'section-line', []),
      ]),

      div(classes: 'projects-grid', [
        for (int i = 0; i < ProjectsData.projects.length; i++)
          _buildProjectCard(ProjectsData.projects[i], i),
      ]),
    ]);
  }

  Component _buildProjectCard(Project project, int index) {
    return div(
      classes: 'project-card fade-in',
      attributes: {'data-delay': '${index * 150}'},
      [
        // Image section
        div(classes: 'project-image-wrap', [
          div(classes: 'project-image-overlay', []),
          img(
            src: project.image,
            alt: project.title,
            classes: 'project-img',
            attributes: {'loading': 'lazy'},
          ),

          // Action links (visible on hover)
          div(classes: 'project-links', [
            if (project.github != null)
              a(
                href: project.github!,
                target: Target.blank,
                classes: 'project-link-btn',
                [
                  RawText(
                    '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 22v-4a4.8 4.8 0 0 0-1-3.02c3.14-.35 6.5-1.4 6.5-7a4.6 4.6 0 0 0-1.39-3.2 4.2 4.2 0 0 0-.14-3.2s-1.12-.35-3.5 1.25a12.1 12.1 0 0 0-6.2 0C6.62 3.25 5.5 3.6 5.5 3.6a4.2 4.2 0 0 0-.14 3.2A4.6 4.6 0 0 0 4 12.8c0 5.58 3.36 6.63 6.4 7-.34.3-.65.8-.75 1.5-.2.1-.8.3-2.2-.8-.4-.6-1-.9-1-.9-.6-.1-.1-.1-.1-.1.7.1 1.2.6 1.2.6.6 1.1 1.8 1.1 2.8.8v2.5"/><path d="M9 21c-3 1-5-1-5-1"/></svg>',
                  ),
                ],
              ),
            if (project.appStore != null)
              a(
                href: project.appStore!,
                target: Target.blank,
                classes: 'project-link-btn',
                [
                  RawText(
                    '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 20.94c1.5 0 2.75 1.06 4 1.06 3 0 6-8 6-12.22A4.91 4.91 0 0 0 17 5c-2.22 0-4 1.44-5 2-1-.56-2.78-2-5-2a4.9 4.9 0 0 0-5 4.78C2 14 5 22 8 22c1.25 0 2.5-1.06 4-1.06z"/><path d="M10 2c0 2.2 1.7 3.89 3 5"/></svg>',
                  ),
                ],
              ),
            if (project.playStore != null)
              a(
                href: project.playStore!,
                target: Target.blank,
                classes: 'project-link-btn',
                [
                  RawText(
                    '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polygon points="5 3 19 12 5 21 5 3"/></svg>',
                  ),
                ],
              ),
            if (project.link != null && project.link != '#')
              a(
                href: project.link!,
                target: Target.blank,
                classes: 'project-link-btn',
                [
                  RawText(
                    '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 3h6v6"/><path d="M10 14 21 3"/><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/></svg>',
                  ),
                ],
              ),
          ]),
        ]),

        // Project body
        div(classes: 'project-body', [
          div(classes: 'project-title', [Component.text(project.title)]),
          p(classes: 'project-desc', [Component.text(project.description)]),
          div(classes: 'project-tech', [
            for (final tag in project.tech)
              span(classes: 'tech-tag', [Component.text(tag)]),
          ]),
        ]),
      ],
    );
  }
}
