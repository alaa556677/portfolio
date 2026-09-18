import 'package:my_reference/my_reference.dart';
import '../data/repo/about_repo.dart';
import 'about_states.dart';

class AboutCubit extends Cubit<AboutStates> with CubitLifeCycleMixin<AboutStates> {
  final AboutRepo _repo;
  AboutCubit(this._repo) : super(const AboutStates());

  Future<void> loadAbout() async {
    safeEmit(state.copyWith(aboutState: const RequestState.isLoading()));
    try {
      final about = await _repo.loadAbout();
      safeEmit(state.copyWith(aboutState: RequestState.isSuccess(about)));
    } catch (e) {
      safeEmit(state.copyWith(aboutState: RequestState.isError(e.toString())));
    }
  }
}
