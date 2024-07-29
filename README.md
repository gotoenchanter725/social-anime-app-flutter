# senpai

A new Flutter project.

## Running the app (on Mac)

Setup flutter sdk: https://docs.flutter.dev/get-started/install

1. `flutter pub get`
2.  cd ios
3.  `pod install`
4.  Open iOS Simulator or Android Studio simulator
5.  `flutter run`

Command to generate files: 

1. `dart run build_runner build --delete-conflicting-outputs`
2. `/bin/zsh ./localization_update.sh` <- Command to upload new translation from 
https://localise.biz/ or you can go to the file and run the script right from there


## Adding UnityIntegration for iOS

1. Get exported build from Unity: `UnityLibrary`
2. Place the `/UnityLibrary` in `/ios/UnityIntegration`
3. Open `Runner.xcworskspace` in XCode
4. In `Unity-iPhone/Data`, tick `UnityFramework`

![Tick UnityFramework](https://i.imgur.com/7FGyA1L.png)

5. Select Runner, go to `General -> Frameworks, Libraries, and Embedded Content` and add `UnityFramework`.

Also go to `Unity-iPhone/Frameworks` and drag all the Frameworks into `Runner`

![Add Dependencies](https://i.imgur.com/PglH5Pe.png)

6. Trigger Play on an iPhone device only, no simulators.