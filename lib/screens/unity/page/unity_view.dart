import 'dart:convert';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:fresh_graphql/fresh_graphql.dart';
import 'package:senpai/core/graphql/blocs/query/query_bloc.dart';
import 'package:senpai/core/user/blocs/fetch_user/fetch_user_bloc.dart';
import 'package:senpai/core/widgets/loading.dart';
import 'package:senpai/dependency_injection/injection.dart';
import 'package:senpai/l10n/resources.dart';
import 'package:senpai/models/auth/auth_model.dart';
import 'package:senpai/models/user_profile/user_profile_model.dart';
import 'package:senpai/utils/helpers/snack_bar_helpers.dart';
import 'package:senpai/utils/methods/aliases.dart';

@RoutePage()
class UnityViewPage extends StatelessWidget {
  UnityViewPage({super.key});

  // ignore: unused_field
  late final UnityWidgetController _unityWidgetController;
  late final UserProfileModel _user;

  Future<void> postUserDetails() async {
    // Send User Info to Unity
    // userId
    final storage = getIt<TokenStorage<AuthModel>>();
    AuthModel? authModel = await storage.read();
    if (authModel == null) {
      throw Exception("Could not find a signed in user");
    }

    dynamic userInfo = jsonEncode({
      "token": authModel.token,
      "userId": _user.id,
      "firstName": _user.firstName,
      "isVerified": _user.verified,
      "gender": _user.gender,
      "isPremium": _user.premium,
      "thumbnailURL": _user.gallery?.photos.first.url
    });

    logIt.info("User Info: $userInfo");

    // Send User Info to Unity
    // userId, json web token, gender, isVerified, isPremium
    // int userID, string token, string gender, bool isVerified, bool isPremium
    _unityWidgetController.postMessage(
        "DataController", "SetUserInfo", userInfo);
  }


  // Communication from Unity to Flutter
  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

// Communication from Unity when new scene is loaded to Flutter
  void onUnitySceneLoaded(SceneLoaded? sceneInfo) {
    if (sceneInfo != null) {
      print('Received scene loaded from unity: ${sceneInfo.name}');
      print(
          'Received scene loaded from unity buildIndex: ${sceneInfo.buildIndex}');

      switch(sceneInfo.name){
        case "VideoChatScene":
        case "TestAvatarScene":
            postUserDetails();
            break;
        default:
        break;
      }

    
    }
  }

  void onUnityCreated(UnityWidgetController controller) {
    _unityWidgetController = controller;
      loadUnityScene();
  }

// 1 = VideoChatScene , 2 = TestAvatarScene
  void loadUnityScene(){
      _unityWidgetController.postMessage(
      "SceneLoaderManager", "ChangeSceneBySceneID", "1");
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<FetchUserBloc>()..fetchCurrentUser()),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: const Text('The Avatar screen'),
        ),
        body: _buildUnityView(),
      ),
    );
  }

  Widget _buildUnityView() {
    return BlocListener<FetchUserBloc, QueryState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (error, result) {
            showSnackBarError(context, R.strings.serverError);
          },
          loaded: (data, result) {
            final response = result.data;
            if (response == null) {
              showSnackBarError(context, R.strings.nullUser);
              logIt.wtf("A successful empty response just got set user");
              return;
            }
            try {
              _user = UserProfileModel.fromJson(result.data!["fetchUser"]);
            } catch (e) {
              logIt.error("Error accessing fetchUser from response: $e");
              showSnackBarError(context, R.strings.nullUser);
            }
          },
        );
      },
      child: BlocBuilder<FetchUserBloc, QueryState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: (result) => const SenpaiLoading(),
            loaded: ((data, result) => UnityWidget(
                  onUnityCreated: onUnityCreated,
                  onUnityMessage: onUnityMessage,
                  onUnitySceneLoaded: onUnitySceneLoaded,
                )),
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
