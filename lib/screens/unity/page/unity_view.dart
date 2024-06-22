import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';

@RoutePage()
class UnityViewPage extends StatelessWidget {
  UnityViewPage({super.key});

  // ignore: unused_field
  late final UnityWidgetController _unityWidgetController;

  void onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller;

    // Send User Info to Unity
    // userId, json web token, gender, isVerified, isPremium
    _unityWidgetController.postMessage("DataController", "setUserInfo", "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Avatar screen'),
      ),
      body: UnityWidget(
        onUnityCreated: onUnityCreated,
      ),
    );
  }
}
