import 'package:my_reference/my_reference.dart';

part 'contact_states.freezed.dart';

@freezed
abstract class ContactStates with _$ContactStates {
  const factory ContactStates({
    @Default(RequestState<bool>.isInitial())
    RequestState<bool> sendEmailState,
  }) = _ContactStates;
}
