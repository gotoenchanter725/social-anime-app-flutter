import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/match/blocs/fetch_lobby_count.dart';
import 'package:senpai/screens/profile/bloc/profile_bloc.dart';

class FetchCountContainer extends StatelessWidget {
  final Widget child;

  final Widget loadingWidget;

  const FetchCountContainer(
      {super.key, required this.child, required this.loadingWidget});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      if (state is LoadingProfileState) {
        return loadingWidget;
      }

      if (state is ProfileInitial) {
        final userId = (context.read<ProfileBloc>().userID);
        if (userId.isNotEmpty) {
          context
              .read<FetchLobbyCountBloc>()
              .fetchLobbyCount(int.tryParse(userId) ?? 0);
        }
      }

      return BlocBuilder<FetchLobbyCountBloc, QueryState>(
          builder: (context, state) {
        return state.maybeWhen<Widget>(
          orElse: () => child,
          loading: (result) => loadingWidget,
          initial: () => loadingWidget,
        );
      });
    });
  }
}
