import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/profile_fill/first_name/widgets/first_name_content.dart';

import '../bloc/first_name_bloc.dart';

class FirstNamePage extends StatelessWidget {
  const FirstNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FirstNameBloc>(
      create: (context) => FirstNameBloc(),
      child: const Stack(
        children: [
          FirstNameContent(),
          // add listeners
        ],
      ),
    );
  }
}
