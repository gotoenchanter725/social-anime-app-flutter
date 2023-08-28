import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/screens/verify_phone/blocs/otp_form_bloc/otp_form_bloc.dart';
import 'package:senpai/screens/verify_phone/widget/verify_phone_content.dart';

@RoutePage()
class VerifyPhonePage extends StatelessWidget {
  const VerifyPhonePage({super.key, required this.phone, required this.id});

  final String phone;
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OTPFormBloc>(
      create: (context) => OTPFormBloc(),
      child: Scaffold(
        body: VerifyPhoneContent(
          phone: phone,
          id: id,
        ),
      ),
    );
  }
}
