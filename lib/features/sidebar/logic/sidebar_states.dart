import 'package:my_reference/my_reference.dart';
import '../data/model/personal_info.dart';

part 'sidebar_states.freezed.dart';

@freezed
abstract class SidebarStates with _$SidebarStates {
  const factory SidebarStates({
    @Default(RequestState<PersonalInfo>.isInitial())
    RequestState<PersonalInfo> personalInfoState,
  }) = _SidebarStates;
}
