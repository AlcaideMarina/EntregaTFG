import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:homeconomy/custom/customColor.dart';
import 'package:homeconomy/src/pages/init_page.dart';
import 'package:homeconomy/src/pages/menu_pages/home_page.dart';
import 'package:homeconomy/src/pages/login_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:homeconomy/src/pages/newUser_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Firebase.initializeApp();
    return MaterialApp(
      theme: ThemeData(
    // Define the default brightness and colors.
    //brightness: Brightness.dark,
    primaryColor: CustomColor.mainColor,
    accentColor: CustomColor.gradientColor,

    // Define the default font family.
    //fontFamily: 'Georgia',
    
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
     textTheme: TextTheme(
    //   headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    //   headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    //   bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    //   //subtitle1: TextStyle(color: Colors.white)
    button: TextStyle(color: CustomColor.mainColor)
     ),
  ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('as', ''), // Arabic, no country code
        const Locale.fromSubtags(
            languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      color: CustomColor.mainColor,
      //home: NewUserPage(id: 'n6AjBMiO90ykZxPiWurt'),
      //home: LoginPage(),
      //home: HomePage(),
      home: InitPage()
    );
  }
}
