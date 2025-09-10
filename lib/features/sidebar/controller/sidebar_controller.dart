import 'package:get/get.dart';
import '../../../../core/states.dart';
import '../model/personal_info.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:html' as html;

class SideBarController extends GetxController{
  var personalInfo = RequestState.initial.obs;
  var downloadCVState = RequestState.initial.obs;

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
  //////////////////////////////////////////////////////////////////////////////
  downloadCV(){
    try{
      downloadCVState.value = RequestState.loading;
      const filePath = 'assets/docs/alaa_CV.pdf';
      html.AnchorElement anchorElement = html.AnchorElement(href: filePath)
        ..download = "alaa_CV.pdf"
        ..click();
      downloadCVState.value = RequestState.success;
    }catch(e){
      downloadCVState.value = RequestState.error;
      throw Exception("Failed to download CV: $e");
    }
  }

}