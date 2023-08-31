import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../utils/constants.dart';
import '../bloc/profile_fill_bloc.dart';
import '../widgets/profile_fill_content.dart';

@RoutePage()
class ProfileFillPage extends StatefulWidget {
  const ProfileFillPage({super.key});

  @override
  State<ProfileFillPage> createState() => _ProfileFillPageState();
}

class _ProfileFillPageState extends State<ProfileFillPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileFillBloc>(
      create: (context) => ProfileFillBloc(),
      child: Scaffold(
        backgroundColor: $constants.palette.darkBlue,
        body: const ProfileFillContent(),
      ),
    );
  }
}
