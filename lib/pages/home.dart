import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import '../components/navbar.dart';
import '../components/hero_section.dart';
import '../components/about_section.dart';
import '../components/experience_section.dart';
import '../components/projects_section.dart';
import '../components/contact_section.dart';
import '../components/footer.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return Component.fragment([
      Navbar(),
      main_(classes: 'site-main', [
        HeroSection(),
        AboutSection(),
        ExperienceSection(),
        ProjectsSection(),
        ContactSection(),
      ]),
      Footer(),
    ]);
  }
}
