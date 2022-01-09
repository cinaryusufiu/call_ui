import 'package:callkit_app/screens/auidiowithimage/auidio_call_with_image.dart';
import 'package:callkit_app/screens/groupcall/group_call_screen.dart';
import 'package:flutter/material.dart';

import 'screens/dialScreen/dial_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo App',
        theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: DialScreen());
  }
}
