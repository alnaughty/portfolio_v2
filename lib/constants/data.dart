// --- DATA CONFIGURATION ---

class MetaDataConfig {
  static const String title = "Zeus Cajurao — Senior Flutter Developer";
  static const String description =
      "Senior Flutter developer crafting high-performance cross-platform apps. Expert in Dart, Firebase, Laravel and exploring Web3 and game dev.";
  static const String author = "Zeus Cajurao";
  static const String keywords =
      "Flutter, Dart, Jaspr, Web3, Game Dev, Senior Developer, Portfolio, Zeus Cajurao, Laravel, Firebase, Flame Engine";
  static const String ogImage = "/assets/picture.jpg";
  static const String twitterHandle = "@alnaughty"; // Assuming based on github name
  static const String siteUrl = "https://zeuscajurao.dev"; // Placeholder if not known
}

class PersonalInfo {
  static const String name = "Zeus Cajurao";
  static const String firstName = "Zeus";
  static const String role = "Senior Flutter Developer";
  static const String tagline =
      "Building high-performance, cross-platform applications and exploring the frontiers of Web3 and game dev.";
  static int get yearsOfExperience {
    final now = DateTime.now();
    final start = DateTime(2019, 5);
    int years = now.year - start.year;
    if (now.month < start.month || (now.month == start.month && now.day < start.day)) {
      years--;
    }
    return years;
  }

  static String get about =>
      "I'm a Flutter developer with $yearsOfExperience+ years of experience building robust cross-platform applications. My core expertise lies deeply in Dart and the Flutter ecosystem, including web development with Jaspr. On the backend, I have a strong foundation in Laravel and Firebase for serverless architectures, and I'm currently expanding my server-side skills with Python. I'm also passionate about pushing the boundaries of what mobile and web apps can do, actively exploring game development using the Flame engine and integrating Web3 capabilities into modern applications.";
  static const String email = "official.zeuscajurao@gmail.com";
  static const String github = "https://github.com/alnaughty";
  static const String linkedin = "https://www.linkedin.com/in/zeus-cajurao-600262243/";
  static const String profileImage = "assets/picture.jpg";
}

class SkillsData {
  static const List<String> skills = [
    "Flutter",
    "Dart",
    "Jaspr",
    "Laravel",
    "Firebase",
    "Python",
    "Flame Engine",
    "Web3 Integration",
    "REST APIs",
    "Git",
    "Mobile Architecture",
  ];
}

class Project {
  final int id;
  final String title;
  final String description;
  final List<String> tech;
  final String? link;
  final String? github;
  final String? appStore;
  final String? playStore;
  final String image;
  final bool unpublished;

  const Project({
    required this.id,
    required this.title,
    required this.description,
    required this.tech,
    this.link,
    this.github,
    this.appStore,
    this.playStore,
    required this.image,
    this.unpublished = false,
  });
}

class ProjectsData {
  static const List<Project> projects = [
    Project(
      id: 8,
      title: "Tranyx",
      description:
          "A localized service bridging and logistics rental platform designed for the Philippine market. Engineered using Flutter and Jaspr for seamless cross-platform mobile and web experiences, featuring real-time location checkpoints, automated escrow releases, and a Solana Web3 roadmap for publishing on the Solana dApp Store.",
      tech: ["Flutter", "Jaspr", "Firebase", "Solana", "Web3", "Maps API"],
      image: "assets/tranyx.jpg",
      unpublished: true,
    ),
    Project(
      id: 7,
      title: "Leggo Driver (Android)",
      description:
          "Developed the Android driver-partner application for Leggo, a ride-hailing platform using Flutter. Engineered real-time navigation and booking dispatch using the Google Navigation SDK, WebSocket channels, and state management powered by Riverpod.",
      tech: ["Flutter", "Riverpod", "Google Navigation", "WebSockets", "Android"],
      image: "assets/leggo.jpg",
      unpublished: true,
    ),

    Project(
      id: 5,
      title: "Nom Nom Delivery",
      description:
          "A modern, high-performance food delivery application connecting users with global chains and local culinary gems. Features real-time tracking from preparation to transit.",
      tech: ["Flutter", "Dart", "Firebase", "State Management", "Maps API"],
      appStore: "https://apps.apple.com/ph/app/nom-nom-delivery/id6739423049",
      playStore: "https://play.google.com/store/apps/details?id=com.nomnomapp.nomnom&hl=en",
      image: "assets/nomnom.jpg",
    ),
    Project(
      id: 6,
      title: "Khepren",
      description:
          "An all-in-one decentralized finance (DeFi) platform designed for secure asset staking, token launchpads, and stakeholder management. Built with optimized yield calculations and clean Web3 integrations.",
      tech: ["Flutter", "Dart", "Web3", "Smart Contracts", "DeFi"],
      image: "assets/khepren.jpg",
      unpublished: true,
    ),
    Project(
      id: 4,
      title: "ShapeYou - Fitness App",
      description:
          "A premier mobile fitness application tailored for the French market. Features personalized workout routines, real-time progress tracking, and localized nutritional guidance.",
      tech: ["Flutter", "Dart", "Firebase", "Health APIs"],
      appStore: "https://apps.apple.com/ph/app/shapeyou-fitness-nutrition/id1591572919",
      playStore: "https://play.google.com/store/apps/details?id=com.tiboInShape.shapeyou",
      image: "assets/shapeyou.jpg",
    ),
    Project(
      id: 3,
      title: "Enterprise Web Dashboard",
      description:
          "A responsive administrative dashboard built leveraging the Dart ecosystem for the web, backed by a robust, custom-built API.",
      tech: ["Jaspr", "Dart", "Laravel", "MySQL"],
      github: "https://github.com/alnaughty",
      image: "https://images.unsplash.com/photo-1551288049-bebda4e38f71?auto=format&fit=crop&q=80&w=800&h=500",
    ),
  ];
}

class Experience {
  final int id;
  final String role;
  final String company;
  final String period;
  final String description;

  const Experience({
    required this.id,
    required this.role,
    required this.company,
    required this.period,
    required this.description,
  });
}

class ExperienceData {
  static const List<Experience> experience = [
    Experience(
      id: 1,
      role: "Senior Flutter Developer",
      company: "Qonvex Techology inc.",
      period: "2019 - 2024",
      description:
          "Led the mobile development team in architecting and deploying scalable cross-platform applications. Standardized development workflows, integrated real-time Firebase features, and mentored junior developers to maintain high code quality.",
    ),
    Experience(
      id: 2,
      role: "Mobile & Backend Developer",
      company: "Qonvex Techology inc.",
      period: "2022 - 2024",
      description:
          "Architected end-to-end solutions by developing cross-platform mobile apps in Flutter and robust backend APIs in Laravel. Optimized data synchronization and improved overall application responsiveness and user retention.",
    ),
    Experience(
      id: 3,
      role: "Software Developer",
      company: "Freelancer",
      period: "2024 - 2025",
      description:
          "Specialized in developing custom mobile and web solutions for diverse clients. Focused on rapid prototyping, MVP development, and seamless cloud integration using Firebase and Laravel ecosystems.",
    ),
    // Experience(
    //   id: 4,
    //   role: "Flutter Developer (Android)",
    //   company: "Techtierra",
    //   period: "Jan 2026 - Jun 2026",
    //   description:
    //       "Dedicated to building high-performance Android applications using Flutter. Implementing native integrations, optimizing UI rendering, and ensuring exceptional user experiences across the Android device landscape.",
    // ),
  ];
}
