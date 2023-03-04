import 'package:chatgp/features/app/app_constant/PageConstant.dart';
import 'package:chatgp/features/app/home/widgets/HomeButtonWidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        child: Positioned(
            child:
              HomeButtonWidget(
            textData:"Text Completion - open AI",
            iconData :Icons.text_fields_outlined,
            onTap:(){
              Navigator.pushNamed(context, PageConstant.textCompletionPage);
            }
          )

        ),
      ),
    );
  }
}
