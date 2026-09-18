import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../model/projects_model.dart';

class ProjectsRepo {
  Future<ProjectsModel> loadProjects() async {
    final String response = await rootBundle.loadString('assets/data/projects.json');
    final data = json.decode(response);
    return ProjectsModel.fromJson(data);
  }
}
