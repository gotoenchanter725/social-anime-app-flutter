import 'dart:async';
import 'package:flutter/material.dart';

/// A widget that simultaneously fades and translates its
/// child in or out when its visibility is toggled.
class FadeAndTranslate extends StatefulWidget {
  /// A widget that simultaneously fades and translates its
  /// child in or out when its visibility is toggled.
  ///
  /// [child] is the widget being transitioned.
  ///
  /// [translate] is the offset the widget is being transitioned to when
  /// [visible] is set to `false`. When [visible] is `true`, the [child]
  /// is positioned at an offset of zero.
  ///
  /// [visible] is the current state of the transition.
  ///
  /// [duration] is the duration of both of fade and translate.
  ///
  /// [delay] is a [Duration] used to delay the start of the transition
  /// once it's been triggered.
  ///
  /// [curve] is used to apply a curve to transform the animations
  /// and affects both the fade and the translate.
  ///
  /// [autoStart], if `true`, will cause the transition to start as soon
  /// as the widget is built. [autoStart]'s transition will start from the
  /// state opposite of [visible], so if [visible] is `true`, the transition
  /// will auto-start from being hidden and become visible.
  ///
  /// [autoStartDelay] is used to delay the transition triggered by [autoStart].
  /// It does not affect any transitions triggered by toggling [visible].
  /// If [delay] isn't `null` and [autoStartDelay] is, [autoStartDelay] will
  /// inherit [delay]'s value.
  ///
  /// [onStart] is a callback executed when the transiton has started (when
  /// the transition is toggled,) regardless of the direction of the transition.
  ///
  /// [onComplete] is a callback executed when the transition has ended,
  /// regardless of the direction of the transition, when the animation reaches
  /// either [AnimationStatus.completed] or [AnimationStatus.dismissed].
  ///
  /// [onCompleted] is a callback executed when the transition animation has
  /// completed, when the animation reaches [AnimationStatus.completed].
  ///
  /// [onDismissed] is a callback executed when the transition animation
  /// has reset, when the animation reaches [AnimationStatus.dismissed].
  ///
  /// [maintainSize] sets whether to maintain space for where the widget would,
  /// have been when it is not [visible].
  ///
  /// [maintainState] sets whether to maintain the [State] objects of the [child]
  /// subtree when it is not [visible].
  const FadeAndTranslate({
    Key? key,
    required this.child,
    required this.translate,
    this.visible = true,
    this.duration = const Duration(milliseconds: 120),
    this.delay,
    this.curve = Curves.easeIn,
    this.autoStart = false,
    this.autoStartDelay,
    this.onStart,
    this.onComplete,
    this.onCompleted,
    this.onDismissed,
    this.maintainSize = false,
    this.maintainAnimation = false,
    this.maintainInteractivity = false,
    this.maintainSemantics = false,
    this.maintainState = false,
  }) : super(key: key);

  /// The widget passed to the builder.
  final Widget child;

  /// The offset the child is translated to/from while fading in/out.
  final Offset translate;

  /// Switches between showing the [child] or hiding it.
  ///
  /// The `maintain` flags should be set to the same values regardless of the
  /// state of the [visible] property, otherwise they will not operate correctly
  /// (specifically, the state will be lost regardless of the state of
  /// [maintainState] whenever any of the `maintain` flags are changed, since
  /// doing so will result in a subtree shape change).
  ///
  /// Unless [maintainState] is set, the [child] subtree will be disposed
  /// (removed from the tree) while hidden.
  ///
  /// Copied from `Visibility`.
  final bool visible;

  /// The duration of the transition.
  final Duration duration;

  /// A [Duration] used to delay the start of the transition
  /// once it's been triggered.
  final Duration? delay;

  /// The curve to use when transforming the value of the animation.
  ///
  /// Applies to both the fade and the translation.
  final Curve? curve;

  /// If `true`, the widget will start transitioning as soon as it's built.
  final bool autoStart;

  /// The duration to delay the transition triggered by [autoStart].
  final Duration? autoStartDelay;

  /// A callback executed when the transition starts.
  final Function? onStart;

  /// A callback executed when the transition is completed.
  final Function? onComplete;

  /// A callback executed when the transition animation has completed,
  /// when the animation reaches [AnimationStatus.completed].
  final Function? onCompleted;

  /// A callback executed when the transition animation has reset,
  /// the animation reaches [AnimationStatus.dismissed].
  final Function? onDismissed;

  /// Whether to maintain space for where the widget would have been.
  ///
  /// To set this, [maintainAnimation] and [maintainState] must also be set.
  ///
  /// Maintaining the size when the widget is not [visible] is not notably more
  /// expensive than just keeping animations running without maintaining the
  /// size, and may in some circumstances be slightly cheaper if the subtree is
  /// simple and the [visible] property is frequently toggled, since it avoids
  /// triggering a layout change when the [visible] property is toggled. If the
  /// [child] subtree is not trivial then it is significantly cheaper to not
  /// even keep the state (see [maintainState]).
  ///
  /// If this property is true, [Opacity] is used instead of [Offstage].
  ///
  /// If this property is false, then [maintainSemantics] and
  /// [maintainInteractivity] must also be false.
  ///
  /// Dynamically changing this value may cause the current state of the
  /// subtree to be lost (and a new instance of the subtree, with new [State]
  /// objects, to be immediately created if [visible] is true).
  ///
  /// Copied from `Visibility`.
  final bool maintainSize;

  /// Whether to maintain animations within the [child] subtree when it is
  /// not [visible].
  ///
  /// To set this, [maintainState] must also be set.
  ///
  /// Keeping animations active when the widget is not visible is even more
  /// expensive than only maintaining the state.
  ///
  /// One example when this might be useful is if the subtree is animating its
  /// layout in time with an [AnimationController], and the result of that
  /// layout is being used to influence some other logic. If this flag is false,
  /// then any [AnimationController]s hosted inside the [child] subtree will be
  /// muted while the [visible] flag is false.
  ///
  /// If this property is true, no [TickerMode] widget is used.
  ///
  /// If this property is false, then [maintainSize] must also be false.
  ///
  /// Dynamically changing this value may cause the current state of the
  /// subtree to be lost (and a new instance of the subtree, with new [State]
  /// objects, to be immediately created if [visible] is true).
  ///
  /// Copied from `Visibility`.
  final bool maintainAnimation;

  /// Whether to allow the widget to be interactive when hidden.
  ///
  /// To set this, [maintainSize] must also be set.
  ///
  /// By default, with [maintainInteractivity] set to false, touch events cannot
  /// reach the [child] when it is hidden from the user. If this flag is set to
  /// true, then touch events will nonetheless be passed through.
  ///
  /// Dynamically changing this value may cause the current state of the
  /// subtree to be lost (and a new instance of the subtree, with new [State]
  /// objects, to be immediately created if [visible] is true).
  ///
  /// Copied from `Visibility`.
  final bool maintainInteractivity;

  /// Whether to maintain the semantics for the widget when it is hidden (e.g.
  /// for accessibility).
  ///
  /// To set this, [maintainSize] must also be set.
  ///
  /// By default, with [maintainSemantics] set to false, the [child] is not
  /// visible to accessibility tools when it is hidden from the user. If this
  /// flag is set to true, then accessibility tools will report the widget as if
  /// it was present.
  ///
  /// Dynamically changing this value may cause the current state of the
  /// subtree to be lost (and a new instance of the subtree, with new [State]
  /// objects, to be immediately created if [visible] is true).
  ///
  /// Copied from `Visibility`.
  final bool maintainSemantics;

  /// Whether to maintain the [State] objects of the [child] subtree when it is
  /// not [visible].
  ///
  /// Keeping the state of the subtree is potentially expensive (because it
  /// means all the objects are still in memory; their resources are not
  /// released). It should only be maintained if it cannot be recreated on
  /// demand. One example of when the state would be maintained is if the child
  /// subtree contains a [Navigator], since that widget maintains elaborate
  /// state that cannot be recreated on the fly.
  ///
  /// If this property is true, an [Offstage] widget is used to hide the child
  /// instead of replacing it with [replacement].
  ///
  /// If this property is false, then [maintainAnimation] must also be false.
  ///
  /// Dynamically changing this value may cause the current state of the
  /// subtree to be lost (and a new instance of the subtree, with new [State]
  /// objects, to be immediately created if [visible] is true).
  ///
  /// Copied from `Visibility`.
  final bool maintainState;

  @override
  FadeAndTranslateState createState() => FadeAndTranslateState();
}

class FadeAndTranslateState extends State<FadeAndTranslate>
    with SingleTickerProviderStateMixin {
  /// The current state of the transition.
  late bool _visible;

  /// The current offset of the child.
  late Offset _translate;

  /// The animation controller used to drive both the
  /// opacity and offset animations.
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    // Set the initial values.
    _visible = widget.autoStart ? !widget.visible : widget.visible;
    _translate = _visible ? Offset.zero : widget.translate;

    // Build the [AnimationController].
    _animationController = AnimationController(
      duration: widget.duration,
      value: _visible ? 0.0 : 1.0,
      vsync: this,
    );

    if (widget.curve != null) {
      _animationController.drive(CurveTween(curve: widget.curve!));
    }

    _animationController.addListener(() {
      _translate = Offset.lerp(
          Offset.zero, widget.translate, _animationController.value)!;
      if (mounted) setState(() {});
    });

    if (widget.onComplete != null ||
        widget.onCompleted != null ||
        widget.onDismissed != null) {
      _animationController.addStatusListener((status) {
        if (status == AnimationStatus.dismissed ||
            status == AnimationStatus.completed) {
          if (widget.onComplete != null) widget.onComplete!();

          if (status == AnimationStatus.dismissed) {
            if (widget.onDismissed != null) widget.onDismissed!();
          } else {
            if (widget.onCompleted != null) widget.onCompleted!();
          }
        }
      });
    }

    // Toggle the transition if [widget.autoStart] is `true`.
    if (widget.autoStart) {
      _autoStart();
    }
  }

  @override
  void dispose() {
    _animationController.removeListener(() {});
    _animationController.removeStatusListener((_) {});
    _animationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(FadeAndTranslate oldWidget) {
    if (widget.visible != oldWidget.visible) {
      if (widget.delay != null) {
        Timer(widget.delay!, () => _toggle());
      } else {
        _toggle();
      }
    }
    super.didUpdateWidget(oldWidget);
  }

  /// Triggers the auto-start transition.
  void _autoStart() {
    final autoStartDelay = widget.autoStartDelay ?? widget.delay;

    if (autoStartDelay != null) {
      Timer(autoStartDelay, () => _toggle());
    } else {
      _toggle();
    }
  }

  /// Toggles the transition.
  void _toggle() {
    if (widget.onStart != null) widget.onStart!();
    if (_visible) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    _visible = widget.visible;
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: widget.child,
      builder: (BuildContext context, Widget? child) => Transform.translate(
        offset: _translate,
        transformHitTests: false,
        child: Opacity(
          opacity: 1.0 - _animationController.value,
          child: child,
        ),
      ),
    );
  }
}
