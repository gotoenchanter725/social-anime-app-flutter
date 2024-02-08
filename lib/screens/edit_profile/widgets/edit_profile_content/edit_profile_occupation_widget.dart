import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/routes/app_router.dart';
import 'package:senpai/screens/edit_profile/bloc/edit_profile_bloc.dart';
import 'package:senpai/screens/profile/widgets/profile_item_header.dart';

import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class EditProfileOccupationWidget extends StatelessWidget {
  final String occupation;
  final String school;

  const EditProfileOccupationWidget({
    super.key,
    required this.occupation,
    required this.school,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<EditProfileBloc>(context);

    return Container(
      padding: EdgeInsets.all($constants.insets.sm),
      decoration: profileBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileItemHeader(
            title: R.strings.workAndEducationTitle,
            onTap: () async {
              await context.router.push(WorkEducationRoute(
                occupation: occupation,
                school: school,
                editBloc: bloc,
              ));
            },
            isEmptyContent: occupation.isEmpty && school.isEmpty,
          ),
          if (occupation.isNotEmpty || school.isNotEmpty)
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                style: getTextTheme(context)
                    .bodyMedium!
                    .copyWith(color: $constants.palette.grey),
                children: [
                  TextSpan(text: occupation),
                  if (occupation.isNotEmpty && school.isNotEmpty)
                    const TextSpan(text: ', '),
                  TextSpan(
                    text: school,
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
