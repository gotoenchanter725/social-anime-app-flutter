import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/user/blocs/report_user/report_user_bloc.dart';
import 'package:senpai/core/widgets/primary_button.dart';
import 'package:senpai/core/widgets/senpai_radio_button.dart';
import 'package:senpai/l10n/resources.dart';

import 'package:senpai/screens/profile/widgets/profile_app_bar.dart';
import 'package:senpai/screens/report_user/bloc/report_bloc.dart';
import 'package:senpai/screens/report_user/enums/report_user_enums.dart';
import 'package:senpai/utils/constants.dart';

class ReportUserContent extends StatelessWidget {
  final String roomId;
  final String reciepientId;
  final String currentUserId;

  const ReportUserContent({
    super.key,
    required this.roomId,
    required this.reciepientId,
    required this.currentUserId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReportBloc, ReportState>(
      builder: (context, state) {
        return Column(
          children: [
            ProfileAppBar(
              title: R.strings.reportText,
              hasLeading: true,
            ),
            SizedBox(
              height: $constants.insets.sm,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
              child: _buildOptionsList(context),
            ),
            const Spacer(),
            _buildReportButton(context),
          ],
        );
      },
    );
  }

  Widget _buildOptionsList(BuildContext context) {
    final bloc = BlocProvider.of<ReportBloc>(context);

    return Column(
      children: ReportUserReason.values.map((reason) {
        return Padding(
          padding: EdgeInsets.only(top: $constants.insets.xxs),
          child: SenpaiRadioButton(
            title: reason.reasonString,
            value: reason,
            isSelected: reason == bloc.reportUserReason,
            onChanged: (userGender) {
              bloc.add(OnReasonChangedEvent(reportUserReason: reason));
            },
          ),
        );
      }).toList(),
    );
  }

  Widget _buildReportButton(BuildContext context) {
    final bloc = BlocProvider.of<ReportBloc>(context);
    return Padding(
      padding: EdgeInsets.all($constants.insets.sm),
      child: PrimaryButton(
        text: R.strings.reportText,
        onPressed: () {
          final serverBloc = BlocProvider.of<ReportUserBloc>(context);
          serverBloc.reportUser(
            conversationId: roomId,
            userId: currentUserId,
            offenseId: reciepientId,
            reason: bloc.reportUserReason.reasonToServer,
          );
        },
      ),
    );
  }
}
