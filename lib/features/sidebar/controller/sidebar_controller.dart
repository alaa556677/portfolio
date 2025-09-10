import 'package:get/get.dart';
import '../../../../core/states.dart';
import '../model/personal_info.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class SideBarController extends GetxController{
  var personalInfo = RequestState.initial.obs;

  Future<PersonalInfo> loadPersonalInfo() async {
    try{
      personalInfo.value = RequestState.loading;
      final String response = await rootBundle.loadString('assets/data/personal_info.json');
      final data = json.decode(response);
      personalInfo.value = RequestState.success;
      return PersonalInfo.fromJson(data);
    }catch(e){
      personalInfo.value = RequestState.error;
      throw Exception("Failed to load personal info: $e");
    }
  }
}