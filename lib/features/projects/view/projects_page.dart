import 'package:flutter/material.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import 'package:portfolio/features/projects/view/widgets/project_card.dart';
import '../logic/projects_cubit.dart';
import '../logic/projects_states.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProjectsCubit>()..loadProjects(),
      child: BlocBuilder<ProjectsCubit, ProjectsStates>(
        builder: (context, state) {
          final projectsModel = state.projectsState.data;
          if (!state.projectsState.isSuccess || projectsModel == null) {
            return PortfolioManager.loadingWidget();
          }
          return Padding(
            padding: EdgeInsetsDirectional.only(top: 30, start: 20, end: 20, bottom: 16),
            child: Center(
              child: SingleChildScrollView(
                child: Wrap(
                  runSpacing: 30,
                  spacing: 30,
                  children: projectsModel.projects!.map((e) => ProjectCard(projects: e)).toList(),
                ),
              )
            ),
          );
        },
      ),
    );
  }
}
