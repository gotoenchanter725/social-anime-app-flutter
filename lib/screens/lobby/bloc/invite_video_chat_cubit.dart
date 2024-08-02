import 'package:flutter_bloc/flutter_bloc.dart';

// Define the states
enum InviteToVideoChatState { initial, pending, success, failed }

// Define the Cubit
class InviteToVideoChatCubit extends Cubit<InviteToVideoChatState> {
  InviteToVideoChatCubit() : super(InviteToVideoChatState.initial);

  void setPending() {
    emit(InviteToVideoChatState.pending);
  }

  void setSuccess() {
    emit(InviteToVideoChatState.success);
  }

  void setFailed() {
    emit(InviteToVideoChatState.failed);
  }

  void reset() {
    emit(InviteToVideoChatState.initial);
  }
}
