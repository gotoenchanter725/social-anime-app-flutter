import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:senpai/screens/license/widget/license_content.dart';

@RoutePage()
class SenpaiLicensePage extends StatelessWidget {
  const SenpaiLicensePage({super.key, required this.mdFileName});

  final String mdFileName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LicenseContent(
        mdFilePath: "assets/licenses/$mdFileName",
      ),
    );
  }
}
