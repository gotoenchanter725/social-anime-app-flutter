import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:senpai/core/widgets/icon_button.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class LicenseContent extends StatelessWidget {
  const LicenseContent({super.key, required this.mdFilePath});

  final String mdFilePath;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: $constants.insets.sm),
        child: Column(
          children: [
            SizedBox(
              height: $constants.insets.xl,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SenpaiIconButton(
                  onPressed: () {
                    context.router.pop();
                  },
                  iconPath: PathConstants.backIcon,
                )
              ],
            ),
            SizedBox(
              height: $constants.insets.lg,
            ),
            Expanded(
              child: FutureBuilder(
                  future: Future.delayed(const Duration(milliseconds: 150))
                      .then((value) {
                    return rootBundle.loadString(mdFilePath);
                  }),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Markdown(
                        data: snapshot.data!,
                        styleSheet:
                            MarkdownStyleSheet.fromTheme(Theme.of(context))
                                .copyWith(
                                    h1: getTextTheme(context).headlineLarge),
                      );
                    }
                    return const Center(
                      child: SenpaiLoading(),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
