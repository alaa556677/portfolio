import 'package:my_reference/my_reference.dart';
import '../data/repo/projects_repo.dart';
import 'projects_states.dart';

class ProjectsCubit extends Cubit<ProjectsStates> with CubitLifeCycleMixin<ProjectsStates> {
  final ProjectsRepo _repo;
  ProjectsCubit(this._repo) : super(const ProjectsStates());

  Future<void> loadProjects() async {
    safeEmit(state.copyWith(projectsState: const RequestState.isLoading()));
    try {
      final projects = await _repo.loadProjects();
      safeEmit(state.copyWith(projectsState: RequestState.isSuccess(projects)));
    } catch (e) {
      safeEmit(state.copyWith(projectsState: RequestState.isError(e.toString())));
    }
  }
}
