import 'package:chatgp/features/text_completion/data/model/text_completion_model.dart';

abstract class TextSearchRepository{


  Future<TextCompletionModel> getTextCompletion(String query);
}