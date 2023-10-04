import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/screens/profile_fill/biography/bloc/biography_bloc.dart';
import 'package:senpai/screens/profile_fill/biography/widgets/biography_content.dart';

class BiographyPage extends StatelessWidget {
  final String? bio;

  const BiographyPage({super.key, this.bio});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BiographyBloc>(
      create: (context) => BiographyBloc()
        ..add(
          OnBiographyInitEvent(bio: bio ?? ''),
        ),
      child: Stack(
        children: [
          const BiographyContent(),
          _buildCreateUserListeners(),
        ],
      ),
    );
  }

  Widget _buildCreateUserListeners() {
    return BlocBuilder<BiographyBloc, BiographyState>(
      builder: (context, state) {
        return state is LoadingState
            ? const SenpaiLoading()
            : const SizedBox.shrink();
      },
    );
  }
}
