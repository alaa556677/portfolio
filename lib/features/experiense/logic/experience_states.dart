import 'package:my_reference/my_reference.dart';
import '../data/model/experience_model.dart';

part 'experience_states.freezed.dart';

@freezed
abstract class ExperienceStates with _$ExperienceStates {
  const factory ExperienceStates({
    @Default(RequestState<ExperienceModel>.isInitial())
    RequestState<ExperienceModel> experienceState,
  }) = _ExperienceStates;
}
