import 'package:chatgp/features/app/home/home_page.dart';
import 'package:chatgp/features/app/splash/SplashScreen.dart';
import 'package:flutter/material.dart';

import 'features/app/routes/on_generate_route.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text ChatGPT',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: OnGenerateRoute.route,
      theme:ThemeData(brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        "/":(context){
          return SplashScreen(
            child: HomePage(),
          );
        }
      }
    );
  }
}
