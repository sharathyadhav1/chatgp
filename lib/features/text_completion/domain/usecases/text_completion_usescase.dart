import 'package:chatgp/features/text_completion/domain/repositories/test_search_repository.dart';

class TextCompletionUsecase{

  final TextSearchRepository repository;

  TextCompletionUsecase({required this.repository});

  Future<TextModel> call(String query)async{
    return repository.getTextCompletion(query);
  }
}