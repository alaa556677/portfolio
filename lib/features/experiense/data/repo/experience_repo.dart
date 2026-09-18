import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../model/experience_model.dart';

class ExperienceRepo {
  Future<ExperienceModel> loadExperience() async {
    final String response = await rootBundle.loadString('assets/data/experience.json');
    final data = json.decode(response);
    return ExperienceModel.fromJson(data);
  }
}
