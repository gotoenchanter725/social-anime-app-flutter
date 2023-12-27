import 'package:flutter/cupertino.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditProfileLocationWidget extends StatelessWidget {
  final String displayCity;
  final String displayState;

  const EditProfileLocationWidget({
    super.key,
    required this.displayCity,
    required this.displayState,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItemHeader(
            title: TextConstants.locationTitle,
            onTap: () async {
              //TODO: change after add Location route
              // await context.router.push(
              //   EditLocationRoute(
              //     editBloc: BlocProvider.of<EditProfileBloc>(context),
              //   ),
              // );
            },
          ),
          if (displayCity.isNotEmpty || displayState.isNotEmpty)
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: getTextTheme(context)
                    .bodyMedium!
                    .copyWith(color: $constants.palette.grey),
                children: [
                  TextSpan(text: displayCity),
                  if (displayCity.isNotEmpty) const TextSpan(text: ', '),
                  TextSpan(text: displayState),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
