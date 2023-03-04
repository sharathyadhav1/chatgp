import 'package:chatgp/features/text_completion/presentation/cubit/text_completion_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/search_text_field_widget.dart';


class TextCompletionPage extends StatefulWidget {
  const TextCompletionPage({Key? key}) : super(key: key);


  @override
  State<TextCompletionPage> createState() => _TextCompletionPageState();
}


class _TextCompletionPageState extends State<TextCompletionPage> {
  TextEditingController _searchTextController = TextEditingController();

  @override
  void initState() {
    _searchTextController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }



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
                if(textCompletionState is TextCompletionLoaded){
                  final listItems = textCompletionState.textCompletionModelData.choices;

                  return ListView.builder(
                      itemCount: listItems.length,
                      itemBuilder: (BuildContext context, int index){

                        final outputData = listItems[index];

                        return Card(
                          child:Padding(padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                    outputData.text,
                                    style:TextStyle(fontSize: 10)

                          ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    InkWell(
                                      onTap: (){

                                      },
                                      child: Icon(Icons.share,size: 35)),
                                    InkWell(
                                        onTap: () {
                                          Clipboard.setData(
                                              ClipboardData(text: outputData.text));
                                        },
                                        child: Icon(
                                          Icons.copy,
                                          size: 35,
                                        ))

                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),


                          ),

                        );



                      }
                      );


                }
                return Center(
                    child: Text(
                      "OpenAI Text Completion",
                      style: TextStyle(fontSize: 20, color: Colors.grey),
                    ));



                }
                ),
              ),
              SearchTextFieldWidget(
                  textEditingController: _searchTextController,
                  onTap: () {
                    BlocProvider.of<TextCompletionCubit>(context)
                        .textCompletion(query: _searchTextController.text)
                        .then((value) => _clearTextField());
                  }),
              SizedBox(
                height: 20,
              ),



            ],
          ),
        )
    );
  }

  void _clearTextField() {
    setState(() {
      _searchTextController.clear();
    });
  }

}
