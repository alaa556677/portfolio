class AboutModel {
  final List<String> about;
  Education? education;
  final List<String> frameworks;
  final List<String> stateManagement;
  final List<String> database;
  final List<String> architecture;
  final List<String> tools;
  final List<String> testing;
  final List<String> otherSkills;
  final List<String> interests;
  final List<Languages>? languages;

  AboutModel({
    required this.about,
    required this.education,
    required this.frameworks,
    required this.stateManagement,
    required this.database,
    required this.architecture,
    required this.tools,
    required this.testing,
    required this.otherSkills,
    required this.interests,
    required this.languages
  });

  factory AboutModel.fromJson(Map<String, dynamic> json) {
    return AboutModel(
      about: (json["about"] as List<dynamic>).map((e) => e as String).toList(),
      education: json["education"] != null ? Education.fromJson(json["education"] as Map<String, dynamic>) : null,
      frameworks: (json["frameworks"] as List<dynamic>).map((e) => e as String).toList(),
      stateManagement: (json["stateManagement"] as List<dynamic>).map((e) => e as String).toList(),
      database: (json["database"] as List<dynamic>).map((e) => e as String).toList(),
      architecture: (json["architecture"] as List<dynamic>).map((e) => e as String).toList(),
      tools: (json["tools"] as List<dynamic>).map((e) => e as String).toList(),
      testing: (json["testing"] as List<dynamic>).map((e) => e as String).toList(),
      otherSkills: (json["otherSkills"] as List<dynamic>).map((e) => e as String).toList(),
      interests: (json["interests"] as List<dynamic>).map((e) => e as String).toList(),
      languages: json["languages"] != null ? (json["languages"] as List<dynamic>).map((e) => Languages.fromJson(e as Map<String, dynamic>)).toList() : null,
    );
  }
}

class Education {
  String? title;
  String? location;
  String? year;

  Education({this.title, this.location, this.year});

  factory Education.fromJson(Map<String, dynamic> json) {
    return Education(
      title: json["title"],
      location: json["location"],
      year: json["year"],
    );
  }
}

class Languages {
  String? language;
  String? level;

  Languages({this.language, this.level});

  factory Languages.fromJson(Map<String, dynamic> json) {
    return Languages(
      language: json["language"],
      level: json["level"],
    );
  }
}