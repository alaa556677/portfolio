import 'package:get/get.dart';
import 'package:portfolio/features/experiense/model/experience_model.dart';
import '../../../core_old/states.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ExperienceController extends GetxController{
  var experienceStates = RequestState.initial.obs;
  Future<ExperienceModel> loadExperience() async {
    try{
      experienceStates.value = RequestState.loading;
      final String response = await rootBundle.loadString('assets/data/experience.json');
      final data = json.decode(response);
      experienceStates.value = RequestState.success;
      return ExperienceModel.fromJson(data);
    }catch(e){
      experienceStates.value = RequestState.error;
      throw Exception("Failed to load personal info: $e");
    }
  }
}