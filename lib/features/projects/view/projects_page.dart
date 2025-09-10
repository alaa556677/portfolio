import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:portfolio/core/widgets/loading_widget.dart';
import 'package:portfolio/features/experiense/view/widget/experience_card.dart';
import 'package:portfolio/features/projects/view/widgets/project_card.dart';
import '../../../core/app_constants.dart';
import '../../../core/states.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/custom_text.dart';
import '../../about/view/widgets/feature_widget.dart';
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
      padding: EdgeInsetsDirectional.symmetric(vertical: 16, horizontal: 20),
      child: Center(
        child: MasonryGridView.extent(
          maxCrossAxisExtent: 360,
          crossAxisSpacing: 30,
          mainAxisSpacing: 30,
          itemBuilder: (context, index) => ProjectCard(projects: projectsModel!.projects![index]),
          itemCount: projectsModel!.projects!.length,
        ),
      )
    ):LoadingWidget();
  }
}
