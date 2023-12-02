import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';
import 'package:senpai/screens/verify_photo/widgets/check_photo_content.dart';
import 'package:senpai/screens/verify_photo/widgets/start_match_content.dart';
import 'package:senpai/screens/verify_photo/widgets/verify_by_photo_content.dart';

class VerifyPhotoContent extends StatelessWidget {
  const VerifyPhotoContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyPhotoBloc, VerifyPhotoState>(
        builder: (context, state) {
      final bloc = BlocProvider.of<VerifyPhotoBloc>(context);

      if (bloc.verifyPhotoStep == VerifyPhotoStep.verifyByPhoto) {
        return VerifyByPhotoContent(bloc.hasProfileFillBloc);
      } else if (bloc.verifyPhotoStep == VerifyPhotoStep.checkPhoto) {
        return CheckPhotoContent(bloc.hasProfileFillBloc);
      } else if (bloc.verifyPhotoStep == VerifyPhotoStep.startMatch) {
        return const StartMatchContent();
      } else {
        return VerifyByPhotoContent(bloc.hasProfileFillBloc);
      }
    });
  }
}
