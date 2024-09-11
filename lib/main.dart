import 'package:flutter/material.dart';
import 'package:my_new_app/utils/colors.dart';

void main() {
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
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: Scaffold(body: Text('Instagram_clone_using_flutter')),
    );
  }
}
