import 'package:get/get.dart';
import '../../../core/states.dart';
import '../model/about_model.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class AboutController extends GetxController{
  var aboutStates = RequestState.initial.obs;
  Future<AboutModel> loadAbout() async {
    try{
      aboutStates.value = RequestState.loading;
      final String response = await rootBundle.loadString('assets/data/about.json');
      final data = json.decode(response);
      aboutStates.value = RequestState.success;
      return AboutModel.fromJson(data);
    }catch(e){
      aboutStates.value = RequestState.error;
      throw Exception("Failed to load personal info: $e");
    }
  }
}