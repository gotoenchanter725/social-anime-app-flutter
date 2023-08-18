import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/data/data_constants.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/data/text_constants.dart';
import 'package:senpai/screens/onboarding/bloc/onboarding_bloc.dart';
import 'package:senpai/screens/onboarding/widgets/circle_progress_bar.dart';
import 'package:senpai/utils/constants.dart';
import 'package:senpai/utils/methods/utils.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<OnboardingBloc>(context);
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 40,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: $constants.insets.lg),
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(
                    TextConstants.onboardingButtonText,
                    style: getTextTheme(context).displaySmall,
                  ),
                  onPressed: () {
                    bloc.add(PageChangedEvent());
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: _createPageView(bloc.pageController, bloc),
          ),
          Expanded(
            flex: 1,
            child: _createStatic(bloc),
          ),
        ],
      ),
    );
  }

  Widget _createPageView(PageController controller, OnboardingBloc bloc) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: DataConstants.onboardingTiles,
      onPageChanged: (index) {
        bloc.add(PageSwipedEvent(index: index));
      },
    );
  }

  Widget _createStatic(OnboardingBloc bloc) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        BlocBuilder<OnboardingBloc, OnboardingState>(
          buildWhen: (_, currState) => currState is PageChangedState,
          builder: (context, state) {
            final percent = _getPercent(bloc.pageIndex);
            return Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: CircleProgressBar(
                    backgroundColor: $constants.palette.progressBackground,
                    value: percent,
                  ),
                ),
                Material(
                  shape: const CircleBorder(),
                  color: $constants.palette.buttonBackground,
                  child: RawMaterialButton(
                    shape: const CircleBorder(),
                    onPressed: () {
                      bloc.add(PageChangedEvent());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SvgPicture.asset(
                        PathConstants.heart,
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                        alignment: Alignment.center,
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  double _getPercent(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return 0.25;
      case 1:
        return 0.65;
      case 2:
        return 1;
      default:
        return 0;
    }
  }
}
