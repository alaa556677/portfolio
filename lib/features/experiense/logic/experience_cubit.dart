import 'package:my_reference/my_reference.dart';
import '../data/repo/experience_repo.dart';
import 'experience_states.dart';

class ExperienceCubit extends Cubit<ExperienceStates> with CubitLifeCycleMixin<ExperienceStates> {
  final ExperienceRepo _repo;
  ExperienceCubit(this._repo) : super(const ExperienceStates());

  Future<void> loadExperience() async {
    safeEmit(state.copyWith(experienceState: const RequestState.isLoading()));
    try {
      final experience = await _repo.loadExperience();
      safeEmit(state.copyWith(experienceState: RequestState.isSuccess(experience)));
    } catch (e) {
      safeEmit(state.copyWith(experienceState: RequestState.isError(e.toString())));
    }
  }
}
