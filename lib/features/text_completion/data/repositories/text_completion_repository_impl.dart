import '../../domain/repositories/test_search_repository.dart';
import '../model/text_completion_model.dart';
import '../remote_data_source/text_completion_remote_data_source.dart';

class TextCompletionRepositoryImpl implements TextSearchRepository{

  final TextCompletionRemoteDataSource remoteDataSource;

  TextCompletionRepositoryImpl({required this.remoteDataSource});

  @override
  Future<TextCompletionModel> getTextCompletion(String query) async =>
      remoteDataSource.getTextCompletion(query);

}