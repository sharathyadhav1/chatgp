import 'package:chatgp/features/app/app_constant/PageConstant.dart';
import 'package:flutter/material.dart';

import '../../text_completion/presentation/pages/TextCompletionPage.dart';

class OnGenerateRoute{
  static Route<dynamic> route(RouteSettings settings){
    final  args = settings.arguments;

    switch(settings.name){

      case "/":{
        return materialBuilder(widget: ErrorPage());

      }
      case PageConstant.textCompletionPage:{
        return materialBuilder(
          widget: TextCompletionPage()
        );
      }
    }
  }
}


class ErrorPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text('error'),
        ),
        body: Center(
          child: Text("error"),
        )
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}){
  return MaterialPageRoute(builder: (_)=> widget);
}

