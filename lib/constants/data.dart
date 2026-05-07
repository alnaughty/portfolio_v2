// --- DATA CONFIGURATION ---

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
  static const String profileImage = "assets/picture.jpeg";
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
  });
}

class ProjectsData {
  static const List<Project> projects = [
    Project(
      id: 4,
      title: "ShapeYou - Fitness App",
      description:
          "A premier mobile fitness application tailored for the French market. Features personalized workout routines, real-time progress tracking, and localized nutritional guidance.",
      tech: ["Flutter", "Dart", "Firebase", "Health APIs"],
      appStore: "https://apps.apple.com/ph/app/shapeyou-fitness-nutrition/id1591572919",
      playStore: "https://play.google.com/store/apps/details?id=com.tiboInShape.shapeyou",
      image: "https://images.unsplash.com/photo-1594882645126-14020914d58d?auto=format&fit=crop&q=80&w=800&h=500",
    ),
    Project(
      id: 1,
      title: "Cross-Platform Fintech App",
      description:
          "A secure, high-performance mobile application for managing personal finances, featuring real-time syncing and serverless backend infrastructure.",
      tech: ["Flutter", "Dart", "Firebase", "State Management"],
      github: "https://github.com/alnaughty",
      image: "https://images.unsplash.com/photo-1563986768609-322da13575f3?auto=format&fit=crop&q=80&w=800&h=500",
    ),
    Project(
      id: 2,
      title: "Web3 Mini-Game",
      description:
          "An experimental 2D mobile game built with the Flame engine, integrating basic Web3 wallet connections for in-game assets.",
      tech: ["Flutter", "Flame Engine", "Web3 Dart", "Smart Contracts"],
      github: "https://github.com/alnaughty",
      image: "https://images.unsplash.com/photo-1614624532983-4ce03382d63d?auto=format&fit=crop&q=80&w=800&h=500",
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
    Experience(
      id: 4,
      role: "Flutter Developer (Android)",
      company: "Techtierra",
      period: "Jan 2026 - Jun 2026",
      description:
          "Dedicated to building high-performance Android applications using Flutter. Implementing native integrations, optimizing UI rendering, and ensuring exceptional user experiences across the Android device landscape.",
    ),
  ];
}
