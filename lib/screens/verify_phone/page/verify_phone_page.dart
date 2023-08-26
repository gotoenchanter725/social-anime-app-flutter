import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/screens/verify_phone/widget/verify_phone_content.dart';

@RoutePage()
class VerifyPhonePage extends StatelessWidget {
  const VerifyPhonePage({super.key, required this.phone});

  final String phone;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerifyPhoneContent(),
    );
  }
}
