import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:roaia/localization/set_localization.dart';
import 'package:roaia/screen/splash.dart';


void main() {
  runApp(const MyApp());
}
ValueNotifier<String>  language =ValueNotifier('en');


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: language,
      builder: (BuildContext context, String value, Widget? child) {
        return MaterialApp(
          locale: Locale(value),
          supportedLocales: const [
            Locale('en', 'US'),
            Locale('ar', 'EG')
          ],
          localizationsDelegates: const [
            SetLocalization.localizationsDelegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(

            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Splash_Screen(),
        );
      },
    );
  }
}


