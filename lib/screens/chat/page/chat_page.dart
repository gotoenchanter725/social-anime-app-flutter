import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_messages_bloc.dart';
import 'package:senpai/core/chat/blocs/fetch_stickers_bloc.dart';
import 'package:senpai/core/chat/blocs/room_subscriptions/room_subscription_bloc.dart';
import 'package:senpai/core/chat/blocs/send_message_bloc.dart';
import 'package:senpai/core/chat/blocs/update_message_bloc.dart';
import 'package:senpai/core/profile_fill/favorite_anime/fetch_anime_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/user/blocs/unmatch_user/unmatch_bloc.dart';
import 'package:senpai/core/widgets/bottom_sheet/bottom_sheet_bloc.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/models/chat/chat_room_params.dart';
import 'package:senpai/screens/chat/bloc/message_reaction_bloc/message_reaction_bloc.dart';
import 'package:senpai/screens/chat/bloc/pending_messages_bloc/pending_messages_bloc.dart';
import 'package:senpai/screens/chat/bloc/text_editing_bloc/text_editing_bloc.dart';
import 'package:senpai/screens/chat/page/chat_controller.dart';

@RoutePage()
class ChatPage extends StatelessWidget {
  final ChatRoomParams roomArgs;
  const ChatPage({super.key, required this.roomArgs});

  @override
  Widget build(BuildContext context) {
    final SendMessageBloc sendMessageBloc = SendMessageBloc();
    final FetchMessagesBloc fetchMessagesBloc =
        FetchMessagesBloc(roomArgs.roomId);
    return MultiBlocProvider(
      providers: [
        BlocProvider<FetchMessagesBloc>(
          create: (_) => fetchMessagesBloc,
        ),
        BlocProvider<SendMessageBloc>(create: (_) => sendMessageBloc),
        BlocProvider<TextEditingBloc>(create: (_) => TextEditingBloc()),
        BlocProvider<PendingMessagesBloc>(
            create: (_) => PendingMessagesBloc(
                sendMessageBloc: sendMessageBloc,
                roomArgs: roomArgs,
                fetchMessagesBloc: fetchMessagesBloc)),
        BlocProvider<MessageReactionBloc>(create: (_) => MessageReactionBloc()),
        BlocProvider<BottomSheetBloc>(create: (_) => BottomSheetBloc()),
        BlocProvider<RoomSubscriptionsBloc>(
            create: (_) => RoomSubscriptionsBloc(roomId: roomArgs.roomId)),
        BlocProvider<UpdateMessageBloc>(create: (_) => UpdateMessageBloc()),
        BlocProvider<FetchStickersBloc>(create: (_) => FetchStickersBloc()),
        BlocProvider<FetchUserBloc>(
            create: (_) => FetchUserBloc()
              ..fetchUser(userId: int.parse(roomArgs.currentUser.id))),
        BlocProvider<FetchAnimeBloc>(create: (_) => getIt<FetchAnimeBloc>()),
        BlocProvider(create: (_) => getIt<UnmatchUserBloc>()),
      ],
      child: ChatController(roomArgs: roomArgs),
    );
  }
}
