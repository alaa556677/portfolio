import 'package:my_reference/my_reference.dart';
import 'package:portfolio/l10n/app_localizations.dart';

// get the current localization
AppLocalizations get tr => AppLocalizations.of(navigatorKey.currentContext!)!;

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

String formatNumber(num value) {
  final bool isInt = value == value.roundToDouble();
  final String raw = isInt ? value.toInt().toString() : value.toString();
  final List<String> parts = raw.split('.');
  final String intPart = parts.first;
  final StringBuffer buffer = StringBuffer();
  for (int i = 0; i < intPart.length; i++) {
    if (i != 0 && (intPart.length - i) % 3 == 0) buffer.write(',');
    buffer.write(intPart[i]);
  }
  if (parts.length > 1) buffer.write('.${parts[1]}');
  return buffer.toString();
}