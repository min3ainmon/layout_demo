import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:flutter/services.dart';
import 'page_2.dart';
import 'page_1.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/pageone': (context) => PageOne(),
        '/pagetwo': (context) => PageTwo(),

      }
    );
  }
}
