import 'dart:convert';
import 'dart:html' as html;
import 'package:flutter/services.dart' show rootBundle;
import '../model/personal_info.dart';

class SidebarRepo {
  Future<PersonalInfo> loadPersonalInfo() async {
    final String response = await rootBundle.loadString('assets/data/personal_info.json');
    final data = json.decode(response);
    return PersonalInfo.fromJson(data);
  }

  void downloadCV() {
    const filePath = 'assets/assets/docs/alaa_CV.pdf';
    // ignore: unused_local_variable
    html.AnchorElement anchorElement = html.AnchorElement(href: filePath)
      ..download = "alaa_CV.pdf"
      ..click();
  }
}
