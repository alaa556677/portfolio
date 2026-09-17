import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_reference/my_reference.dart';
import 'package:portfolio/core/di/di.dart';
import 'package:portfolio/core/widgets/portfolio_manager.dart';
import 'package:portfolio/features/home_screen/view/home_screen.dart';
import 'package:portfolio/l10n/app_localizations.dart';

void main() async {
  initialServices();
  emailjs.init(const emailjs.Options(
    publicKey: 'uMlUbYEjnq3u8K5-v',
    privateKey: '7urqGl-AAhOGpIdyS-OrG',
  ));
  setupGetIT();
  runApp(PortfolioManager.mainWidget(MainModel(
     providers: [
      BlocProvider<AppLocaleCubit>(create: (_) => getIt<AppLocaleCubit>())
    ],
    title: 'Mar7ba',
    supportedLocales: AppLocalizations.supportedLocales,
    localizationsDelegates: const [
      AppLocalizations.delegate,
      CountryLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    home: HomeScreen()
  )));
}