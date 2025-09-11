import 'package:emailjs/emailjs.dart' as emailjs;

class EmailService {
  static void init() {
    emailjs.init(const emailjs.Options(
      publicKey: 'uMlUbYEjnq3u8K5-v',
      privateKey: '7urqGl-AAhOGpIdyS-OrG',
    ));
  }

  static Future<bool> sendPortfolioEmail({
    required String subject,
    required String name,
    required String email,
    required String phone,
    required String message,
  }) async {
    final templateParams = {
      'title': subject,        // {{title}}
      'name': name,            // {{name}}
      'from_name': name,       // {{from_name}}
      'from_email': email,     // {{from_email}}
      'time': "${DateTime.now().day}-${DateTime.now().month}-${DateTime.now().year} ${DateTime.now().hour}:${DateTime.now().minute}", // {{time}}
      'message': message,      // {{message}}
      'phone': phone,          // {{phone}}
    };


    try {
      await emailjs.send("service_dojygha", "template_zt2lfka", templateParams);
      return true;
    } catch (error) {
      print('EmailJS error: $error');
      return false;
    }
  }
}