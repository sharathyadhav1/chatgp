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
    );
  }
}
