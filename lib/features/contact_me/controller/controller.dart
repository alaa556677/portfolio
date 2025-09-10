import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/states.dart';
import '../model/send_email_model.dart';

class ContactController extends GetxController{
  var sendStates = RequestState.initial.obs;
  Future<void> sendEmail(SendEmailModel sendEmailMessage) async {
    try{
      sendStates.value = RequestState.loading;
      final Uri emailUri = Uri(
        scheme: 'mailto',
        path: 'alaabaker166@gmail.com', // حط ايميلك هنا
        queryParameters: {
          'subject': 'Portfolio Message',
          'body': '''
            Name: ${sendEmailMessage.name}
            Email: ${sendEmailMessage.email}
            Phone: ${sendEmailMessage.phone}
            Message: ${sendEmailMessage.message}
        ''',
        },
      );
      if(await canLaunchUrl(emailUri)) {
        await launchUrl(emailUri);
        sendStates.value = RequestState.success;
      }else{
        sendStates.value = RequestState.error;
        throw 'Could not launch $emailUri';
      }
    }catch(e){
      sendStates.value = RequestState.error;
      throw Exception("Failed to load personal info: $e");
    }

  }
}