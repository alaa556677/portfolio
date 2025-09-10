class ProjectsModel {
  List<Projects>? projects;

  ProjectsModel({this.projects});

  factory ProjectsModel.fromJson(Map<String, dynamic> json) {
    return ProjectsModel(
      projects: (json['projects'] as List<dynamic>)
          .map((e) => Projects.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}

class Projects {
  String? projectName;
  String? imageUrl;
  List<String>? imagePaths;
  String? googleLink;
  String? appleLink;
  String? webLink;
  List<String>? information;

  Projects(
      {this.projectName,
        this.imageUrl,
        this.imagePaths,
        this.googleLink,
        this.appleLink,
        this.webLink,
        this.information});

  factory Projects.fromJson(Map<String, dynamic> json) {
    return Projects(
      projectName: json['projectName'] ?? '',
      imageUrl: json['imageUrl'] ?? '',
      imagePaths: (json['imagePaths'] as List<dynamic>).map((e) => e as String).toList(),
      googleLink: json['googleLink'] ?? '',
      appleLink: json['appleLink'] ?? '',
      webLink: json['webLink'] ?? '',
      information: (json['information'] as List<dynamic>).map((e) => e as String).toList(),
    );
  }
}