import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/core/widgets/loading_widget.dart';
import 'package:portfolio/features/projects/view/widgets/project_card.dart';
import '../../../core/states.dart';
import '../controller/project_controller.dart';
import '../model/projects_model.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});
  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  final ProjectController projectController = Get.find();
  ProjectsModel? projectsModel;

  @override
  void initState() {
    projectController.loadProjects().then((info) {
      setState(() {
        projectsModel = info;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return projectController.projectsStates.value == RequestState.success ? Padding(
      padding: EdgeInsetsDirectional.only(top: 30, start: 20, end: 20, bottom: 16),
      child: Center(
        child: SingleChildScrollView(
          child: Wrap(
            runSpacing: 30,
            spacing: 30,
            children: projectsModel!.projects!.map((e) => ProjectCard(projects: e)).toList(),
          ),
        )
      )
    ):LoadingWidget();
  }
}
