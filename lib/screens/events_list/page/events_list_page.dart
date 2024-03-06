import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';

import 'package:senpai/screens/events_list/widgets/events_list_content.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

@RoutePage()
class EventsListPage extends StatelessWidget {
  const EventsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SenpaiAppBar(
        // change it
        title: 'Events & Conventions',
        hasLeading: false,

        actions: [
          GestureDetector(
            onTap: () {
              //TODO: add EventsFilterRoute
            },
            child: Padding(
              padding: EdgeInsets.only(right: $constants.insets.sm),
              child: Text(
                // change it
                'Filter',
                style: getTextTheme(context).bodySmall!.copyWith(
                      letterSpacing: 0,
                    ),
              ),
            ),
          ),
        ],
      ),
      body: const EventsListContent(),
    );
  }
}
