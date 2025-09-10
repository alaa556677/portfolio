import 'package:url_launcher/url_launcher.dart';

Future<void> openInNewTab(String url) async {
  final uri = Uri.parse(url);
  final ok = await launchUrl(
    uri,
    webOnlyWindowName: '_blank',
    mode: LaunchMode.externalApplication,
  );
  if (!ok) {
    throw 'Could not launch $url';
  }
}