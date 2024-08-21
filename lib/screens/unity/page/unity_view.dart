import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class UnityViewPage extends StatelessWidget {
  UnityViewPage({super.key, required this.avatorGuid}) {
    // empty to silence linter warnings
  }

  final String avatorGuid;

  late final UnityWidgetController _unityWidgetController;

  // Communication from Unity to Flutter
  void _onUnityMessage(dynamic message, BuildContext context) {
    logIt.info('Received message from unity: ${message.toString()}');
  }

// Communication from Unity when new scene is loaded to Flutter
  void _onUnitySceneLoaded(SceneLoaded? sceneInfo) {
    if (sceneInfo == null) {
      return;
    }

    switch (sceneInfo.name) {
      case "TestAvatarScene":
        _setPreselectedAvatar();
        break;
      default:
        break;
    }
  }

//for set a preselected character first send setPreselectedAvatar before loadUnityScene
  void _onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller;
    //setPreselectedAvatar();
    _loadUnityScene();
  }

// 1 = VideoChatScene , 2 = TestAvatarScene
  void _loadUnityScene() {
    _unityWidgetController.postMessage(
        "SceneLoaderManager", "ChangeSceneBySceneID", "2");
  }

  void _setPreselectedAvatar() {
    _unityWidgetController.postMessage(
        "SceneLoaderManager", "SetPreselectedAvatarGuid", avatorGuid);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: _buildUnityView(context),
    );
  }

  Widget _buildUnityView(BuildContext context) {
    return UnityWidget(
      onUnityCreated: _onUnityCreated,
      onUnityMessage: (message) => _onUnityMessage(message, context),
      onUnitySceneLoaded: _onUnitySceneLoaded,
    );
  }
}
