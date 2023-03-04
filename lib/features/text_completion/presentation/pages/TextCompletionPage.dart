import 'package:chatgp/features/text_completion/presentation/cubit/text_completion_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class TextCompletionPage extends StatelessWidget {
  const TextCompletionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
          title: Text('Text Suggestion page'),
        ),
        body: Center(
          child: Column(
            children: [
              Expanded(
                  child: BlocBuilder<TextCompletionCubit,TextCompletionState>(
                builder: (context,textCompletionState) {
                if(textCompletionState is TextCompletionLoading){
                  return Center(
                    child: Container(
                      width: 300,
                      height: 300,
                      child: Image.asset("assets/loading.gif")),
                  );
                }



                }
                ),
              )



            ],
          ),
        )
    );;
  }
}
