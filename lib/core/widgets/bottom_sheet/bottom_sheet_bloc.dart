import 'package:flutter_bloc/flutter_bloc.dart';

enum BottomSheetState { hidden, visible }

class BottomSheetBloc extends Cubit<BottomSheetState> {
  BottomSheetBloc() : super(BottomSheetState.hidden);

  void show() => emit(BottomSheetState.visible);
  void hide() => emit(BottomSheetState.hidden);
}
