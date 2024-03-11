import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/screens/events_list/widgets/empty_events_widget.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EventsListContent extends StatelessWidget {
  const EventsListContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        const Expanded(
          child: Center(
            child: EmptyEventsWidget(),
          ),
        ),
        _buildCreateEventButton(context)
      ],
    ));
  }

  Widget _buildCreateEventButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // change after add NewEventRoute
        // context.router.push(
        //   const NewEventRoute(),
        // );
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SvgPicture.asset(
            PathConstants.eventButtonIcon,
            height: $constants.corners.xxl,
          ),
          Text(
            R.strings.createEventTitle,
            style: getTextTheme(context).bodyMedium?.copyWith(
                color: $constants.palette.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
