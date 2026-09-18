class ExperienceModel {
  final List<Experience> experience;

  ExperienceModel({required this.experience});

  factory ExperienceModel.fromJson(Map<String, dynamic> json) {
    return ExperienceModel(
      experience: (json['experience'] as List<dynamic>)
          .map((e) => Experience.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Experience {
  final String jobTitle;
  final String company;
  final String location;
  final String dateFrom;
  final String dateTo;
  final List<String> skills;
  final List<String> technology;

  Experience({
    required this.jobTitle,
    required this.company,
    required this.location,
    required this.dateFrom,
    required this.dateTo,
    required this.skills,
    required this.technology,
  });

  factory Experience.fromJson(Map<String, dynamic> json) {
    return Experience(
      jobTitle: json['jobTitle'] ?? '',
      company: json['company'] ?? '',
      location: json['location'] ?? '',
      dateFrom: json['dateFrom'] ?? '',
      dateTo: json['dateTo'] ?? '',
      skills: (json['skills'] as List<dynamic>).map((e) => e as String).toList(),
      technology: (json['technology'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }
}
