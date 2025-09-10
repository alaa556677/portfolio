import 'package:get/get.dart';
import '../../../core/states.dart';
import '../model/projects_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ProjectController extends GetxController{
  var projectsStates = RequestState.initial.obs;
  Future<ProjectsModel> loadProjects() async {
    try{
      projectsStates.value = RequestState.loading;
      final String response = await rootBundle.loadString('assets/data/projects.json');
      final data = json.decode(response);
      projectsStates.value = RequestState.success;
      return ProjectsModel.fromJson(data);
    }catch(e){
      projectsStates.value = RequestState.error;
      throw Exception("Failed to load personal info: $e");
    }
  }
}