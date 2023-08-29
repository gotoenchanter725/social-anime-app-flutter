import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:senpai/core/widgets/loading.dart';

class LicenseContent extends StatelessWidget {
  const LicenseContent({super.key, required this.mdFilePath});

  final String mdFilePath;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.delayed(const Duration(milliseconds: 150)).then((value) {
          return rootBundle.loadString(mdFilePath);
        }),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(
              data: snapshot.data!,
            );
          }
          return const Center(
            child: SenpaiLoading(),
          );
        });
  }
}
