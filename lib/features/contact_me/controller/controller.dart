import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:get/get.dart';
import '../../../core/states.dart';
import 'package:flutter/material.dart';

class ContactController extends GetxController{
  var emailStates = RequestState.initial.obs;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  @override
  void onInit() {
    ever(emailStates, (state) {
      if (state == RequestState.success) {
        nameController.clear();
        emailController.clear();
        phoneController.clear();
        messageController.clear();
      }
    });
    super.onInit();
  }

  @override
  void onClose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    messageController.dispose();
    super.onClose();
  }

  Future<bool> sendPortfolioEmail({
    required String name,
    required String email,
    required String phone,
    required String message,
  }) async {
    final templateParams = {
      'title': "Alaa bakr",
      'name': name,
      'from_name': name,
      'from_email': email,
      'time': "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year} ${DateTime.now().hour}:${DateTime.now().minute}", // {{time}}
      'message': message,
      'phone': phone,
    };
    try {
      emailStates.value = RequestState.loading;
      await emailjs.send("service_dojygha", "template_zt2lfka", templateParams);
      emailStates.value = RequestState.success;
      return true;
    } catch (error) {
      emailStates.value = RequestState.error;
      print('EmailJS error: $error');
      return false;
    }
  }
}