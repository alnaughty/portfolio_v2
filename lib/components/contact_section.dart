import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../constants/data.dart';

class ContactSection extends StatelessComponent {
  const ContactSection({super.key});

  @override
  Component build(BuildContext context) {
    return section(id: 'contact', [
      // Glow effect
      div(classes: 'contact-glow', []),

      // Eyebrow label
      div(
        classes: 'contact-eyebrow fade-in',
        [Component.text("WHAT'S NEXT?")],
      ),

      // Title
      h2(
        classes: 'contact-title fade-in',
        attributes: {'data-delay': '100'},
        [Component.text('Get In Touch')],
      ),

      // Subtitle
      p(
        classes: 'contact-subtitle fade-in',
        attributes: {'data-delay': '200'},
        [
          Component.text(
            "I'm currently looking for new opportunities. Whether you have a question, a project idea, or just want to say hi, I'll try my best to get back to you!",
          ),
        ],
      ),

      // Contact form
      form(
        id: 'contact-form',
        classes: 'contact-form fade-in',
        attributes: {'data-delay': '300'},
        [
          // Name + Email row
          div(classes: 'form-row', [
            div(classes: 'form-group', [
              label(
                htmlFor: 'contact-name',
                classes: 'form-label',
                [Component.text('Name')],
              ),
              input(
                id: 'contact-name',
                name: 'name',
                type: InputType.text,
                classes: 'form-input',
                attributes: {'placeholder': 'John Doe', 'required': ''},
              ),
            ]),
            div(classes: 'form-group', [
              label(
                htmlFor: 'contact-email',
                classes: 'form-label',
                [Component.text('Email')],
              ),
              input(
                id: 'contact-email',
                name: 'email',
                type: InputType.email,
                classes: 'form-input',
                attributes: {'placeholder': 'john@example.com', 'required': ''},
              ),
            ]),
          ]),

          // Message
          div(classes: 'form-group', [
            label(
              htmlFor: 'contact-message',
              classes: 'form-label',
              [Component.text('Message')],
            ),
            textarea(
              id: 'contact-message',
              name: 'message',
              rows: 5,
              classes: 'form-textarea',
              required: true,
              placeholder: "Hello! I'd like to discuss...",
              [],
            ),
          ]),

          // Footer: Submit + direct email
          div(classes: 'form-footer', [
            button(
              id: 'form-submit-btn',
              type: ButtonType.submit,
              classes: 'btn-submit',
              [
                RawText('''
                  <svg id="submit-spinner" xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                    stroke-linecap="round" stroke-linejoin="round" class="spin" style="display:none">
                    <path d="M21 12a9 9 0 1 1-6.219-8.56"/>
                  </svg>
                  <svg id="submit-check" xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                    stroke-linecap="round" stroke-linejoin="round" style="display:none">
                    <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/>
                    <polyline points="22 4 12 14.01 9 11.01"/>
                  </svg>
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" id="submit-icon"
                    viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"
                    stroke-linecap="round" stroke-linejoin="round">
                    <line x1="22" x2="11" y1="2" y2="13"/><polygon points="22 2 15 22 11 13 2 9 22 2"/>
                  </svg>
                '''),
                span(id: 'submit-text', [Component.text('Send Message')]),
              ],
            ),
            a(
              href: 'mailto:${PersonalInfo.email}',
              classes: 'direct-email-link',
              [
                Component.text('or email me directly '),
                RawText(
                  '<svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15 3h6v6"/><path d="M10 14 21 3"/><path d="M18 13v6a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h6"/></svg>',
                ),
              ],
            ),
          ]),
        ],
      ),
    ]);
  }
}
