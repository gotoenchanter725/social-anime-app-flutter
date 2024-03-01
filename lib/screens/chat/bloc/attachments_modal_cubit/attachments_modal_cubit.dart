import 'package:flutter_bloc/flutter_bloc.dart';

// This is a simple boolean state for the Cubit
enum ModalState { shown, hidden }

class AttachmentModalCubit extends Cubit<ModalState> {
  AttachmentModalCubit() : super(ModalState.hidden);

  void showModal() => emit(ModalState.shown);
  void hideModal() => emit(ModalState.hidden);
}
