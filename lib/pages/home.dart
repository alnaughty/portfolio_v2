import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/navbar.dart';
import '../components/hero_section.dart';
import '../components/about_section.dart';
import '../components/skills_section.dart';
import '../components/writing_section.dart';
import '../components/contact_section.dart';
import '../components/footer.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      Navbar(),
      main_(classes: 'container', [
        HeroSection(),
        AboutSection(),
        SkillsSection(),
        WritingSection(),
        ContactSection(),
      ]),
      Footer(),
    ]);
  }
}
