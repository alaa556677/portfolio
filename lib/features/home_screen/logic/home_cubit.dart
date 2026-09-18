import 'package:my_reference/my_reference.dart';
import 'home_states.dart';

class HomeCubit extends Cubit<HomeStates> with CubitLifeCycleMixin<HomeStates> {
  HomeCubit() : super(const HomeStates());

  void changeTabBarIndex(int newIndex) {
    safeEmit(state.copyWith(currentTabIndex: newIndex));
  }
}
