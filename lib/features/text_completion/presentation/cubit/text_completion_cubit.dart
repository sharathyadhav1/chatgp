import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:chatgp/features/text_completion/data/model/text_completion_model.dart';
import 'package:equatable/equatable.dart';

import '../../../core/custom_exceptions.dart';
import '../../domain/usecases/text_completion_usescase.dart';

part 'text_completion_state.dart';

class TextCompletionCubit extends Cubit<TextCompletionState> {
  final TextCompletionUseCase textCompletionUseCase;
  TextCompletionCubit({required this.textCompletionUseCase}) : super(TextCompletionInitial());


  Future<void> textCompletion({required String query}) async {
    emit(TextCompletionLoading());
    try {
      final textCompletionModelData = await textCompletionUseCase.call(query);
      emit(TextCompletionLoaded(textCompletionModelData: textCompletionModelData));
    } on SocketException catch (e) {
      emit(TextCompletionFailure(errorMessage: e.message));
    } on ServerException catch (e) {
      emit(TextCompletionFailure(errorMessage: e.message));
    }
  }
}