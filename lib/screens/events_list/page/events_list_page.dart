import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/core/widgets/senpai_app_bar.dart';
import 'package:senpai/l10n/resources.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

@RoutePage()
class EventsListPage extends StatelessWidget {
  const EventsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      appBar: SenpaiAppBar(
        title: R.strings.eventsConventionsTitle,
        hasLeading: false,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(right: $constants.insets.sm),
              child: Text(
                R.strings.filterTitle,
                style: getTextTheme(context).bodySmall!.copyWith(
                      letterSpacing: 0,
                    ),
              ),
            ),
          ),
        ],
      ),
      // Herbert Joseph 11.03
      // Just a note: until Events & Conventions are fully complete,
      // let's leave the Events tab as "To be Implemented"
      // body: const EventsListContent(),
      body: const Center(
        child: Text("To be implemented"),
      ),
    );
  }
}
