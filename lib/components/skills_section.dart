import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class SkillsSection extends StatelessComponent {
  const SkillsSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(
      classes: 'skills fade-up',
      id: 'skills',
      [
        div(classes: 'section-label', [Component.text('02 — Skills & Stack')]),
        div(classes: 'skills-grid', [
          div(classes: 'skills-col', [
            div(classes: 'skill-group', [
              div(classes: 'group-label', [Component.text('MOBILE & CROSS-PLATFORM')]),
              div(classes: 'chips', [
                div(classes: 'chip', [
                  img(src: 'icons/flutter-icon-lg.png', classes: 'chip-icon'),
                  Component.text(' Flutter '),
                  span(classes: 'chip-badge', [Component.text('Primary')]),
                ]),
                div(classes: 'chip', [
                  img(src: 'icons/dart-programming-language-icon.webp', classes: 'chip-icon'),
                  Component.text(' Dart '),
                  span(classes: 'chip-badge', [Component.text('Primary')]),
                ]),
                div(classes: 'chip', [
                  RawText(
                    '<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M18.4395 5.5586c-.675 1.1664-1.352 2.3318-2.0274 3.498-.0366-.0155-.0742-.0286-.1113-.043-1.8249-.6957-3.484-.8-4.42-.787-1.8551.0185-3.3544.4643-4.2597.8203-.084-.1494-1.7526-3.021-2.0215-3.4864a1.1451 1.1451 0 0 0-.1406-.1914c-.3312-.364-.9054-.4859-1.379-.203-.475.282-.7136.9361-.3886 1.5019 1.9466 3.3696-.0966-.2158 1.9473 3.3593.0172.031-.4946.2642-1.3926 1.0177C2.8987 12.176.452 14.772 0 18.9902h24c-.119-1.1108-.3686-2.099-.7461-3.0683-.7438-1.9118-1.8435-3.2928-2.7402-4.1836a12.1048 12.1048 0 0 0-2.1309-1.6875c.6594-1.122 1.312-2.2559 1.9649-3.3848.2077-.3615.1886-.7956-.0079-1.1191a1.1001 1.1001 0 0 0-.8515-.5332c-.5225-.0536-.9392.3128-1.0488.5449zm-.0391 8.461c.3944.5926.324 1.3306-.1563 1.6503-.4799.3197-1.188.0985-1.582-.4941-.3944-.5927-.324-1.3307.1563-1.6504.4727-.315 1.1812-.1086 1.582.4941zM7.207 13.5273c.4803.3197.5506 1.0577.1563 1.6504-.394.5926-1.1038.8138-1.584.4941-.48-.3197-.5503-1.0577-.1563-1.6504.4008-.6021 1.1087-.8106 1.584-.4941z"/></svg>',
                  ),
                  Component.text(' iOS & Android '),
                  span(classes: 'chip-badge', [Component.text('Flutter Cross-Platform')]),
                ]),
                div(classes: 'chip', [
                  Component.text(' Flutter Web '),
                  span(classes: 'chip-badge', [Component.text('Explore')]),
                ]),
              ]),
            ]),
            div(classes: 'skill-group', [
              div(classes: 'group-label', [Component.text('BACKEND & DATA')]),
              div(classes: 'chips', [
                div(classes: 'chip', [
                  img(src: 'icons/Laravel.svg.png', classes: 'chip-icon'),
                  Component.text(' Laravel '),
                  span(classes: 'chip-badge', [Component.text('Production')]),
                ]),
                div(classes: 'chip', [
                  img(src: 'icons/5968332.png', classes: 'chip-icon'),
                  Component.text(' PHP '),
                  span(classes: 'chip-badge', [Component.text('Production')]),
                ]),
                div(classes: 'chip', [
                  img(src: 'icons/pngimg.com - mysql_PNG23.png', classes: 'chip-icon'),
                  Component.text(' MySQL '),
                  span(classes: 'chip-badge', [Component.text('Production')]),
                ]),
                div(classes: 'chip', [
                  Component.text(' REST APIs '),
                  span(classes: 'chip-badge', [Component.text('Architecture')]),
                ]),
                div(classes: 'chip', [
                  RawText(
                    '<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M14.25.18l.9.2.73.26.59.3.45.32.34.34.25.34.16.33.1.3.04.26.02.2-.01.13V8.5l-.05.63-.13.55-.21.46-.26.38-.3.31-.33.25-.35.19-.35.14-.33.1-.3.07-.26.04-.21.02H8.77l-.69.05-.59.14-.5.22-.41.27-.33.32-.27.35-.2.36-.15.37-.1.35-.07.32-.04.27-.02.21v3.06H3.17l-.21-.03-.28-.07-.32-.12-.35-.18-.36-.26-.36-.36-.35-.46-.32-.59-.28-.73-.21-.88-.14-1.05-.05-1.23.06-1.22.16-1.04.24-.87.32-.71.36-.57.4-.44.42-.33.42-.24.4-.16.36-.1.32-.05.24-.01h.16l.06.01h8.16v-.83H6.18l-.01-2.75-.02-.37.05-.34.11-.31.17-.28.25-.26.31-.23.38-.2.44-.18.51-.15.58-.12.64-.1.71-.06.77-.04.84-.02 1.27.05zm-6.3 1.98l-.23.33-.08.41.08.41.23.34.33.22.41.09.41-.09.33-.22.23-.34.08-.41-.08-.41-.23-.33-.33-.22-.41-.09-.41.09zm13.09 3.95l.28.06.32.12.35.18.36.27.36.35.35.47.32.59.28.73.21.88.14 1.04.05 1.23-.06 1.23-.16 1.04-.24.86-.32.71-.36.57-.4.45-.42.33-.42.24-.4.16-.36.09-.32.05-.24.02-.16-.01h-8.22v.82h5.84l.01 2.76.02.36-.05.34-.11.31-.17.29-.25.25-.31.24-.38.2-.44.17-.51.15-.58.13-.64.09-.71.07-.77.04-.84.01-1.27-.04-1.07-.14-.9-.2-.73-.25-.59-.3-.45-.33-.34-.34-.25-.34-.16-.33-.1-.3-.04-.25-.02-.2.01-.13v-5.34l.05-.64.13-.54.21-.46.26-.38.3-.32.33-.24.35-.2.35-.14.33-.1.3-.06.26-.04.21-.02.13-.01h5.84l.69-.05.59-.14.5-.21.41-.28.33-.32.27-.35.2-.36.15-.36.1-.35.07-.32.04-.28.02-.21V6.07h2.09l.14.01zm-6.47 14.25l-.23.33-.08.41.08.41.23.33.33.23.41.08.41-.08.33-.23.23-.33.08-.41-.08-.41-.23-.33-.33-.23-.41-.08-.41.08z"/></svg>',
                  ),
                  Component.text(' Python '),
                  span(classes: 'chip-badge', [Component.text('Academic')]),
                ]),
              ]),
            ]),
            div(classes: 'skill-group', [
              div(classes: 'group-label', [Component.text('DESIGN & UI')]),
              div(classes: 'chips', [
                div(classes: 'chip', [
                  RawText(
                    '<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="currentColor"><path d="M15.852 8.981h-4.588V0h4.588c2.476 0 4.49 2.014 4.49 4.49s-2.014 4.491-4.49 4.491zM12.735 7.51h3.117c1.665 0 3.019-1.355 3.019-3.019s-1.355-3.019-3.019-3.019h-3.117V7.51zm0 1.471H8.148c-2.476 0-4.49-2.014-4.49-4.49S5.672 0 8.148 0h4.588v8.981zm-4.587-7.51c-1.665 0-3.019 1.355-3.019 3.019s1.354 3.02 3.019 3.02h3.117V1.471H8.148zm4.587 15.019H8.148c-2.476 0-4.49-2.014-4.49-4.49s2.014-4.49 4.49-4.49h4.588v8.98zM8.148 8.981c-1.665 0-3.019 1.355-3.019 3.019s1.355 3.019 3.019 3.019h3.117V8.981H8.148zM8.172 24c-2.489 0-4.515-2.014-4.515-4.49s2.014-4.49 4.49-4.49h4.588v4.441c0 2.503-2.047 4.539-4.563 4.539zm-.024-7.51a3.023 3.023 0 0 0-3.019 3.019c0 1.665 1.365 3.019 3.044 3.019 1.705 0 3.093-1.376 3.093-3.068v-2.97H8.148zm7.704 0h-.098c-2.476 0-4.49-2.014-4.49-4.49s2.014-4.49 4.49-4.49h.098c2.476 0 4.49 2.014 4.49 4.49s-2.014 4.49-4.49 4.49zm-.097-7.509c-1.665 0-3.019 1.355-3.019 3.019s1.355 3.019 3.019 3.019h.098c1.665 0 3.019-1.355 3.019-3.019s-1.355-3.019-3.019-3.019h-.098z"/></svg>',
                  ),
                  Component.text(' Figma '),
                  span(classes: 'chip-badge', [Component.text('Proficient')]),
                ]),
                div(classes: 'chip', [
                  Component.text(' Prototyping '),
                  span(classes: 'chip-badge', [Component.text('Proficient')]),
                ]),
                div(classes: 'chip', [
                  Component.text(' Design systems '),
                  span(classes: 'chip-badge', [Component.text('Working')]),
                ]),
              ]),
            ]),
          ]),

          div(classes: 'mastery-col', [
            div(classes: 'group-label', [Component.text('EXPERIENCE / MASTERY')]),
            div(classes: 'progress-item', [
              div(classes: 'p-name', [Component.text('Flutter / Dart')]),
              div(classes: 'p-track', [
                div(classes: 'p-fill', attributes: {'style': 'width: 90%;'}, []),
              ]),
              div(classes: 'p-val', [Component.text('90%')]),
            ]),
            div(classes: 'progress-item', [
              div(classes: 'p-name', [Component.text('Laravel / PHP')]),
              div(classes: 'p-track', [
                div(classes: 'p-fill', attributes: {'style': 'width: 80%;'}, []),
              ]),
              div(classes: 'p-val', [Component.text('80%')]),
            ]),
            div(classes: 'progress-item', [
              div(classes: 'p-name', [Component.text('Figma')]),
              div(classes: 'p-track', [
                div(classes: 'p-fill', attributes: {'style': 'width: 75%;'}, []),
              ]),
              div(classes: 'p-val', [Component.text('75%')]),
            ]),
            div(classes: 'progress-item', [
              div(classes: 'p-name', [Component.text('Python')]),
              div(classes: 'p-track', [
                div(classes: 'p-fill', attributes: {'style': 'width: 50%;'}, []),
              ]),
              div(classes: 'p-val', [Component.text('50%')]),
            ]),
          ]),
        ]),
      ],
    );
  }
}
