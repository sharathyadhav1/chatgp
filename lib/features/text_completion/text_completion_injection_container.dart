



import 'package:chatgp/features/text_completion/domain/repositories/test_search_repository.dart';
import 'package:chatgp/features/text_completion/presentation/cubit/text_completion_cubit.dart';

import '../../injection_container.dart';
import 'data/remote_data_source/text_completion_remote_data_source.dart';
import 'data/remote_data_source/text_completion_remote_data_source_impl.dart';
import 'data/repositories/text_completion_repository_impl.dart';
import 'domain/usecases/text_completion_usescase.dart';

Future<void> textCompletionInjectionContainer() async{

  //Futures bloc
  sl.registerFactory<TextCompletionCubit>(
        () => TextCompletionCubit(
      textCompletionUseCase: sl.call(),
    ),
  );

  //UseCase
  sl.registerLazySingleton<TextCompletionUseCase>(() => TextCompletionUseCase(
    repository: sl.call(),
  ));
  //repository
  sl.registerLazySingleton<TextSearchRepository>(
          () => TextCompletionRepositoryImpl(
        remoteDataSource: sl.call(),
      ));
  //remote data
  sl.registerLazySingleton<TextCompletionRemoteDataSource>(
          () => TextCompletionRemoteDataSourceImpl(
        httpClient: sl.call(),
      ));
}