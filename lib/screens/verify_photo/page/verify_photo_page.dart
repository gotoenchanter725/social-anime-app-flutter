import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/screens/verify_photo/widgets/verify_photo_content.dart';

@RoutePage()
class VerifyPhotoPage extends StatelessWidget {
  const VerifyPhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: VerifyPhotoContent()),
    );
  }
}
