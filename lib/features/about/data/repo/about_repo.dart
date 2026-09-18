import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../model/about_model.dart';

class AboutRepo {
  Future<AboutModel> loadAbout() async {
    final String response = await rootBundle.loadString('assets/data/about.json');
    final data = json.decode(response);
    return AboutModel.fromJson(data);
  }
}
