import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:senpai/core/widgets/bottom_sheet/bottom_sheet_bloc.dart';
import 'package:senpai/utils/constants.dart';

class AnimatedBottomSheetWidget extends StatefulWidget {
  final double height; // Height of the bottom sheet when visible

  final Widget child;

  const AnimatedBottomSheetWidget({
    Key? key,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  AnimatedBottomSheetWidgetState createState() =>
      AnimatedBottomSheetWidgetState();
}

class AnimatedBottomSheetWidgetState extends State<AnimatedBottomSheetWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _heightAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 100));
    _heightAnimation = Tween<double>(begin: 0, end: widget.height)
        .animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BottomSheetBloc, BottomSheetState>(
      listener: (context, state) {
        if (state == BottomSheetState.visible) {
          _animationController.forward();
        } else {
          _animationController.reverse();
        }
      },
      child: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Stack(
            children: [
              if (_animationController.value > 0) _buildOverlay(context),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipRect(
                  child: OverflowBox(
                    minHeight: 0,
                    maxHeight: widget.height,
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: _heightAnimation.value,
                      child: Container(
                        decoration: BoxDecoration(
                          color: $constants.palette.appBackground,
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular($constants.corners.lg)),
                        ),
                        child: _heightAnimation.value > 40
                            ? _buildSheetContent()
                            : const SizedBox.shrink(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSheetContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildHandle(context),
        Expanded(child: widget.child),
      ],
    );
  }

  Widget _buildHandle(BuildContext context) {
    return Container(
      height: 4,
      width: 40,
      margin: EdgeInsets.symmetric(vertical: $constants.insets.xs),
      decoration: BoxDecoration(
        color: $constants.palette.white,
        borderRadius: BorderRadius.circular($constants.corners.xs),
      ),
    );
  }

  Widget _buildOverlay(BuildContext context) {
    return GestureDetector(
      onTap: () => context.read<BottomSheetBloc>().hide(),
      child: Container(
        color: $constants.palette.black.withOpacity(
            _animationController.value * 0.6), // Semi-transparent overlay
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
