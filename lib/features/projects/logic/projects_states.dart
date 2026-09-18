import 'package:my_reference/my_reference.dart';
import '../data/model/projects_model.dart';

part 'projects_states.freezed.dart';

@freezed
abstract class ProjectsStates with _$ProjectsStates {
  const factory ProjectsStates({
    @Default(RequestState<ProjectsModel>.isInitial())
    RequestState<ProjectsModel> projectsState,
  }) = _ProjectsStates;
}
