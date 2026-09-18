import 'package:emailjs/emailjs.dart' as emailjs;
import '../model/send_email_model.dart';

class ContactRepo {
  Future<void> sendPortfolioEmail(SendEmailModel model) async {
    final templateParams = {
      'title': "Alaa bakr",
      'name': model.name,
      'from_name': model.name,
      'from_email': model.email,
      'time': "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year} ${DateTime.now().hour}:${DateTime.now().minute}",
      'message': model.message,
      'phone': model.phone,
    };
    await emailjs.send("service_dojygha", "template_zt2lfka", templateParams);
  }
}
