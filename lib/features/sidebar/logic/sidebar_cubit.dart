import 'package:my_reference/my_reference.dart';
import '../data/repo/sidebar_repo.dart';
import 'sidebar_states.dart';

class SidebarCubit extends Cubit<SidebarStates> with CubitLifeCycleMixin<SidebarStates> {
  final SidebarRepo _repo;
  SidebarCubit(this._repo) : super(const SidebarStates());

  Future<void> loadPersonalInfo() async {
    safeEmit(state.copyWith(personalInfoState: const RequestState.isLoading()));
    try {
      final info = await _repo.loadPersonalInfo();
      safeEmit(state.copyWith(personalInfoState: RequestState.isSuccess(info)));
    } catch (e) {
      safeEmit(state.copyWith(personalInfoState: RequestState.isError(e.toString())));
    }
  }

  void downloadCV() {
    try {
      _repo.downloadCV();
    } catch (e) {
      throw Exception("Failed to download CV: $e");
    }
  }
}
