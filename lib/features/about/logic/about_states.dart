import 'package:my_reference/my_reference.dart';
import '../data/model/about_model.dart';

part 'about_states.freezed.dart';

@freezed
abstract class AboutStates with _$AboutStates {
  const factory AboutStates({
    @Default(RequestState<AboutModel>.isInitial())
    RequestState<AboutModel> aboutState,
  }) = _AboutStates;
}
