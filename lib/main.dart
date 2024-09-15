import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_new_app/responsive/mobile_screen_layout.dart';
import 'package:my_new_app/responsive/responsive_layout_screen.dart';
import 'package:my_new_app/responsive/web_screen_layout.dart';
import 'package:my_new_app/screens/login_screen.dart';
import 'package:my_new_app/screens/signup_screen.dart';
import 'package:my_new_app/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDBWszEkiDWHDMlNQUFC8XTDtJhyczWxHk",
        projectId: "instagramcloneusingflutter",
        messagingSenderId: "981929528437",
        appId: "1:981929528437:web:8597dc2d214952e5f37c3c",
        storageBucket: "instagramcloneusingflutter.appspot.com",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram_clone_using_flutter',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      //home: const ResponsiveLayout(
       //mobileScreenLayout: MobileScreenLayout(),
        //webScreenLayout: WebScreenLayout(),
      //),
      home: LoginScreen(),
    );
  }
}
