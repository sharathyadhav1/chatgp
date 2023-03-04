import 'dart:io';

import 'package:chatgp/features/app/home/home_page.dart';
import 'package:chatgp/features/app/splash/SplashScreen.dart';
import 'package:chatgp/features/text_completion/presentation/cubit/text_completion_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/app/routes/on_generate_route.dart';
import 'features/core/http_certificate_maneger.dart';
import 'injection_container.dart' as di;


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = new MyHttpOverrides();
  await di.init();

  runApp(MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<TextCompletionCubit>(
          create: (_) => di.sl<TextCompletionCubit>(),
        )
      ],
      child:MaterialApp(title: 'Text ChatGPT',
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
    );
  }
}
