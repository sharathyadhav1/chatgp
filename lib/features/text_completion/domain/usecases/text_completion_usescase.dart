import 'package:chatgp/features/text_completion/domain/repositories/test_search_repository.dart';

import '../../data/model/text_completion_model.dart';

class TextCompletionUseCase{

  final TextSearchRepository repository;

  TextCompletionUseCase({required this.repository});

  Future<TextCompletionModel> call(String query)async{
    return repository.getTextCompletion(query);
  }
}