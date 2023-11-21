import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/verify_photo/bloc/verify_photo_bloc.dart';
import 'package:senpai/screens/verify_photo/camera_page/camera_bloc/camera_bloc.dart';
import 'package:senpai/screens/verify_photo/camera_page/widgets/camera_content.dart';

@RoutePage()
class VerifyCameraPage extends StatelessWidget {
  final VerifyPhotoBloc bloc;
  const VerifyCameraPage({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: bloc),
        BlocProvider<CameraBloc>(
          create: (context) => CameraBloc()..add(OnInitCameraEvent()),
        ),
      ],
      child: const Stack(
        children: [
          CameraContent(),
        ],
      ),
    );
  }
}
