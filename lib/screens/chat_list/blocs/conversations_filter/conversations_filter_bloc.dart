import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/models/chat/categorized_conversation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:senpai/models/chat/chat_conversation.dart';
import 'package:senpai/models/match/match_user_data.dart';

part 'conversations_filter_event.dart';
part 'conversations_filter_state.dart';

part 'conversations_filter_bloc.freezed.dart';

class ConversationsFilterBloc
    extends Bloc<ConversationsFilterEvent, ConversationsFilterState> {
  final CategorizedConversations allConversations;

  TextEditingController searchController = TextEditingController();

  FocusNode searchFocusNode = FocusNode();

  ConversationsFilterBloc(this.allConversations)
      : super(ConversationsFilterState.initial(
            filteredConversations: allConversations, filter: '')) {
    on<_FilterChanged>(_onFilterChanged);
  }

  void setupSearch() {
    searchFocusNode.requestFocus();
  }

  void _onFilterChanged(
      _FilterChanged event, Emitter<ConversationsFilterState> emit) {
    final filter = event.filter;
    CategorizedConversations filteredConversations;

    if (filter.isEmpty) {
      searchController.clear();
      filteredConversations = allConversations;
    } else {
      List<ChatConversation> activeChats = allConversations.activeConversations;
      List<MatchUserData> matches = allConversations.matches;

      List<ChatConversation> filteredActiveChats = activeChats.where((chat) {
        final contactName = chat.contactName.toLowerCase();
        final filterLower = filter.toLowerCase();

        bool nameMatchesFilter = contactName.contains(filterLower);
        return nameMatchesFilter;
      }).toList();

      List<MatchUserData> filteredMatches = matches.where((match) {
        final userName = match.userName.toLowerCase();
        final filterLower = filter.toLowerCase();

        bool nameMatchesFilter = userName.contains(filterLower);
        return nameMatchesFilter;
      }).toList();
      filteredConversations = CategorizedConversations(
          activeConversations: filteredActiveChats, matches: filteredMatches);
    }

    emit(ConversationsFilterState.filtered(
        filteredConversations: filteredConversations, filter: filter));
  }
}
