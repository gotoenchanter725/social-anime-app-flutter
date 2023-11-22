import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../utils/constants.dart';
import '../bloc/profile_fill_bloc.dart';
import '../widgets/profile_fill_content.dart';

@RoutePage()
class ProfileFillPage extends StatelessWidget {
  final String phone;
  final String id;

  const ProfileFillPage({
    super.key,
    required this.phone,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileFillBloc>(
      create: (context) =>
          ProfileFillBloc()..add(OnInitUserInfoEvent(id: id, phone: phone)),
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: const ProfileFillContent(),
      ),
    );
  }
}
