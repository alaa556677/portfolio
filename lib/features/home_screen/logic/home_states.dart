import 'package:my_reference/my_reference.dart';

part 'home_states.freezed.dart';

@freezed
abstract class HomeStates with _$HomeStates {
  const factory HomeStates({
    @Default(0) int currentTabIndex,
  }) = _HomeStates;
}
