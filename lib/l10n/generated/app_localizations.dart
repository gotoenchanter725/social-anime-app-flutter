import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_pt.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('es'),
    Locale('ja'),
    Locale('pt')
  ];

  /// No description provided for @englishNotTranslated.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get englishNotTranslated;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @onboarding1SubTitle.
  ///
  /// In en, this message translates to:
  /// **'your waifu'**
  String get onboarding1SubTitle;

  /// No description provided for @onboarding2Title.
  ///
  /// In en, this message translates to:
  /// **'Anime'**
  String get onboarding2Title;

  /// No description provided for @onboarding2SubTitle.
  ///
  /// In en, this message translates to:
  /// **'lovers unite'**
  String get onboarding2SubTitle;

  /// No description provided for @onboarding3Title.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get onboarding3Title;

  /// No description provided for @onboarding3SubTitle.
  ///
  /// In en, this message translates to:
  /// **'matching'**
  String get onboarding3SubTitle;

  /// No description provided for @onboardingButtonText.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingButtonText;

  /// No description provided for @entryText.
  ///
  /// In en, this message translates to:
  /// **'By tapping \"Create account\" or \"Sign in\", you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.'**
  String get entryText;

  /// No description provided for @entrySpanText1.
  ///
  /// In en, this message translates to:
  /// **'By tapping \"Create account\" or \"Sign in\", you agree to our'**
  String get entrySpanText1;

  /// No description provided for @entryActionText1.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get entryActionText1;

  /// No description provided for @entrySpanText2.
  ///
  /// In en, this message translates to:
  /// **' Learn how we process your data in our'**
  String get entrySpanText2;

  /// No description provided for @entryActionText2.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get entryActionText2;

  /// No description provided for @entrySpanText3.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get entrySpanText3;

  /// No description provided for @entryActionText3.
  ///
  /// In en, this message translates to:
  /// **'Cookies Policy'**
  String get entryActionText3;

  /// No description provided for @signUp.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get signUp;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign in'**
  String get signIn;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello!'**
  String get hello;

  /// No description provided for @createUserPrompt.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone'**
  String get createUserPrompt;

  /// No description provided for @continueText.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueText;

  /// No description provided for @invalidPhoneError.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number. Please try again'**
  String get invalidPhoneError;

  /// No description provided for @createUserInstructions.
  ///
  /// In en, this message translates to:
  /// **'We will send a text with a verification code.'**
  String get createUserInstructions;

  /// No description provided for @serverError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again'**
  String get serverError;

  /// No description provided for @nullUser.
  ///
  /// In en, this message translates to:
  /// **'There\'s no existing account associated with this phone number'**
  String get nullUser;

  /// No description provided for @alreadyHasAccount.
  ///
  /// In en, this message translates to:
  /// **'This user already has an account'**
  String get alreadyHasAccount;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'I agree to receive SMS texts from Senpai at the phone number provided. Reply STOP to opt-out.'**
  String get termsAndConditions;

  /// No description provided for @verifyPhoneHeading.
  ///
  /// In en, this message translates to:
  /// **'Your code is'**
  String get verifyPhoneHeading;

  /// No description provided for @verifyPhoneInstruction.
  ///
  /// In en, this message translates to:
  /// **'We sent the verification code on'**
  String get verifyPhoneInstruction;

  /// No description provided for @invalidCodeError.
  ///
  /// In en, this message translates to:
  /// **'Invalid code. Please try again'**
  String get invalidCodeError;

  /// No description provided for @verifyCodeAction.
  ///
  /// In en, this message translates to:
  /// **'Code not received? Resend'**
  String get verifyCodeAction;

  /// No description provided for @skipStep.
  ///
  /// In en, this message translates to:
  /// **'Skip this step'**
  String get skipStep;

  /// No description provided for @verifyPhotoHeading.
  ///
  /// In en, this message translates to:
  /// **'Photo verify'**
  String get verifyPhotoHeading;

  /// No description provided for @verifyPhotoDescription.
  ///
  /// In en, this message translates to:
  /// **'Photo verify to let everyone know\nyour photos are really you'**
  String get verifyPhotoDescription;

  /// No description provided for @verifyPhotoButtonText.
  ///
  /// In en, this message translates to:
  /// **'Verify by photo'**
  String get verifyPhotoButtonText;

  /// No description provided for @matchTabText.
  ///
  /// In en, this message translates to:
  /// **'Match'**
  String get matchTabText;

  /// No description provided for @chatTabText.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chatTabText;

  /// No description provided for @profileTabText.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTabText;

  /// No description provided for @happyWithPhotoText.
  ///
  /// In en, this message translates to:
  /// **'Happy with\nyour photo?'**
  String get happyWithPhotoText;

  /// No description provided for @weWillScanYourPhotoText.
  ///
  /// In en, this message translates to:
  /// **'We will scan your photo to verify your identity'**
  String get weWillScanYourPhotoText;

  /// No description provided for @retakeButton.
  ///
  /// In en, this message translates to:
  /// **'Retake'**
  String get retakeButton;

  /// No description provided for @agreeAndSubmitButton.
  ///
  /// In en, this message translates to:
  /// **'Agree and submit'**
  String get agreeAndSubmitButton;

  /// No description provided for @thanksLotText.
  ///
  /// In en, this message translates to:
  /// **'Thanks a lot!'**
  String get thanksLotText;

  /// No description provided for @weReceivedYourPhotoText.
  ///
  /// In en, this message translates to:
  /// **'We have received your photo and will answer within 1-2 business days'**
  String get weReceivedYourPhotoText;

  /// No description provided for @startMatchingButton.
  ///
  /// In en, this message translates to:
  /// **'Start matching!'**
  String get startMatchingButton;

  /// No description provided for @welcomeSenpaiTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Senpai!'**
  String get welcomeSenpaiTitle;

  /// No description provided for @welcomeSenpaiDescription.
  ///
  /// In en, this message translates to:
  /// **'Fill your profile and start matching'**
  String get welcomeSenpaiDescription;

  /// No description provided for @fillProfileText.
  ///
  /// In en, this message translates to:
  /// **'Fill the profile'**
  String get fillProfileText;

  /// No description provided for @yourFirstName.
  ///
  /// In en, this message translates to:
  /// **'Your first name'**
  String get yourFirstName;

  /// No description provided for @yourFirstNameDescription.
  ///
  /// In en, this message translates to:
  /// **'This is how it will appear in Senpai'**
  String get yourFirstNameDescription;

  /// No description provided for @firstNameText.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstNameText;

  /// No description provided for @nextText.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextText;

  /// No description provided for @conversationsDataErrorText.
  ///
  /// In en, this message translates to:
  /// **'Failed to get conversations from the server'**
  String get conversationsDataErrorText;

  /// No description provided for @emptyConversationsPromptText.
  ///
  /// In en, this message translates to:
  /// **'Start liking'**
  String get emptyConversationsPromptText;

  /// No description provided for @emptyConversationsText.
  ///
  /// In en, this message translates to:
  /// **'When you match with other users they will appear here'**
  String get emptyConversationsText;

  /// No description provided for @emptyChatTitle.
  ///
  /// In en, this message translates to:
  /// **'You matched with'**
  String get emptyChatTitle;

  /// No description provided for @emptyChatPromptText.
  ///
  /// In en, this message translates to:
  /// **'Don\'t wait too long, say hello :)'**
  String get emptyChatPromptText;

  /// No description provided for @stickerMessageText.
  ///
  /// In en, this message translates to:
  /// **'🌄 Sticker'**
  String get stickerMessageText;

  /// No description provided for @animationRecomedationText.
  ///
  /// In en, this message translates to:
  /// **'🌄 Animation'**
  String get animationRecomedationText;

  /// No description provided for @gifMessageText.
  ///
  /// In en, this message translates to:
  /// **'🌄 Gif'**
  String get gifMessageText;

  /// No description provided for @attachmentMessageText.
  ///
  /// In en, this message translates to:
  /// **'🌄 Attachment'**
  String get attachmentMessageText;

  /// No description provided for @cancelText.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelText;

  /// No description provided for @emptySearchConversationsHintText.
  ///
  /// In en, this message translates to:
  /// **'Try to search your matches or chats'**
  String get emptySearchConversationsHintText;

  /// No description provided for @emptyConversationSearchPromptText.
  ///
  /// In en, this message translates to:
  /// **'Oops. No matches found'**
  String get emptyConversationSearchPromptText;

  /// No description provided for @emptyConversationSearchText.
  ///
  /// In en, this message translates to:
  /// **'Maybe there is a mistake in search? Please check and try again'**
  String get emptyConversationSearchText;

  /// No description provided for @stickersTabText.
  ///
  /// In en, this message translates to:
  /// **'Stickers'**
  String get stickersTabText;

  /// No description provided for @gifsTabText.
  ///
  /// In en, this message translates to:
  /// **'GIPHY'**
  String get gifsTabText;

  /// No description provided for @animeTabText.
  ///
  /// In en, this message translates to:
  /// **'Recommend'**
  String get animeTabText;

  /// No description provided for @favouriteAnimeSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'My favorite animes'**
  String get favouriteAnimeSelectionTitle;

  /// No description provided for @searchHintText.
  ///
  /// In en, this message translates to:
  /// **'Search chat or match'**
  String get searchHintText;

  /// No description provided for @matchesTitle.
  ///
  /// In en, this message translates to:
  /// **'Matches'**
  String get matchesTitle;

  /// No description provided for @messagesTitle.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messagesTitle;

  /// No description provided for @chatInputHint.
  ///
  /// In en, this message translates to:
  /// **'Send message...'**
  String get chatInputHint;

  /// No description provided for @invalidFirstNameError.
  ///
  /// In en, this message translates to:
  /// **'Invalid first name. Please try again'**
  String get invalidFirstNameError;

  /// No description provided for @userOnlineText.
  ///
  /// In en, this message translates to:
  /// **'Active now'**
  String get userOnlineText;

  /// No description provided for @userOfflineText.
  ///
  /// In en, this message translates to:
  /// **'Active recently'**
  String get userOfflineText;

  /// No description provided for @failedToSendMessageText.
  ///
  /// In en, this message translates to:
  /// **'Failed to send message'**
  String get failedToSendMessageText;

  /// No description provided for @failedToUpdateMessageText.
  ///
  /// In en, this message translates to:
  /// **'Failed to add reaction to message'**
  String get failedToUpdateMessageText;

  /// No description provided for @animeDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Add a description'**
  String get animeDescriptionHint;

  /// No description provided for @emptyChatAnimationsSearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Oops. No animes found'**
  String get emptyChatAnimationsSearchTitle;

  /// No description provided for @emptyChatAnimationsSearchText.
  ///
  /// In en, this message translates to:
  /// **'Maybe there is a mistake in search? Please check and try again'**
  String get emptyChatAnimationsSearchText;

  /// No description provided for @searchGifPlaceHolderText.
  ///
  /// In en, this message translates to:
  /// **'Search in GIPHY'**
  String get searchGifPlaceHolderText;

  /// No description provided for @viewProfileText.
  ///
  /// In en, this message translates to:
  /// **'View Profile'**
  String get viewProfileText;

  /// No description provided for @unmatchText.
  ///
  /// In en, this message translates to:
  /// **'Unmatch'**
  String get unmatchText;

  /// No description provided for @reportText.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get reportText;

  /// No description provided for @inappropriateBehaviorText.
  ///
  /// In en, this message translates to:
  /// **'Inappropriate Behavior'**
  String get inappropriateBehaviorText;

  /// No description provided for @spamText.
  ///
  /// In en, this message translates to:
  /// **'Spam'**
  String get spamText;

  /// No description provided for @sexualAbuseText.
  ///
  /// In en, this message translates to:
  /// **'Sexual Abuse'**
  String get sexualAbuseText;

  /// No description provided for @areYouSureYouWantToUnmatchUser.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to unmatch this user?'**
  String get areYouSureYouWantToUnmatchUser;

  /// No description provided for @yourBirthdayText.
  ///
  /// In en, this message translates to:
  /// **'Your birthday'**
  String get yourBirthdayText;

  /// No description provided for @yourBirthdayDescription.
  ///
  /// In en, this message translates to:
  /// **'Your age will be public'**
  String get yourBirthdayDescription;

  /// No description provided for @okText.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get okText;

  /// No description provided for @pleaseSelectDateText.
  ///
  /// In en, this message translates to:
  /// **'Please select a date'**
  String get pleaseSelectDateText;

  /// No description provided for @youAreText.
  ///
  /// In en, this message translates to:
  /// **'You are'**
  String get youAreText;

  /// No description provided for @youAreDescription.
  ///
  /// In en, this message translates to:
  /// **'How do you identify?'**
  String get youAreDescription;

  /// No description provided for @male.
  ///
  /// In en, this message translates to:
  /// **'Male'**
  String get male;

  /// No description provided for @female.
  ///
  /// In en, this message translates to:
  /// **'Female'**
  String get female;

  /// No description provided for @youLookingForText.
  ///
  /// In en, this message translates to:
  /// **'You looking for'**
  String get youLookingForText;

  /// No description provided for @youLookingDescription.
  ///
  /// In en, this message translates to:
  /// **'Who should we show for you'**
  String get youLookingDescription;

  /// No description provided for @both.
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get both;

  /// No description provided for @yourOccupationText.
  ///
  /// In en, this message translates to:
  /// **'Your occupation'**
  String get yourOccupationText;

  /// No description provided for @universityName.
  ///
  /// In en, this message translates to:
  /// **'University name'**
  String get universityName;

  /// No description provided for @jobTitleName.
  ///
  /// In en, this message translates to:
  /// **'Job title'**
  String get jobTitleName;

  /// No description provided for @jobTitleNameHelper.
  ///
  /// In en, this message translates to:
  /// **'If you don’t have a job or don’t want to fill in this field, just skip it.'**
  String get jobTitleNameHelper;

  /// No description provided for @invalidUniversityNameError.
  ///
  /// In en, this message translates to:
  /// **'Invalid university name. Please try again'**
  String get invalidUniversityNameError;

  /// No description provided for @noUniversityFound.
  ///
  /// In en, this message translates to:
  /// **'No university with such a name was found.'**
  String get noUniversityFound;

  /// No description provided for @yourStoryText.
  ///
  /// In en, this message translates to:
  /// **'Your story'**
  String get yourStoryText;

  /// No description provided for @yourStoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Tell us a little bit about yourself'**
  String get yourStoryDescription;

  /// No description provided for @shortInfoAboutYou.
  ///
  /// In en, this message translates to:
  /// **'Short info about you'**
  String get shortInfoAboutYou;

  /// No description provided for @uploadPhotosText.
  ///
  /// In en, this message translates to:
  /// **'Upload photos'**
  String get uploadPhotosText;

  /// No description provided for @uploadPhotosDescription.
  ///
  /// In en, this message translates to:
  /// **'Add at least 2 photos to continue'**
  String get uploadPhotosDescription;

  /// No description provided for @uploadPhotoError.
  ///
  /// In en, this message translates to:
  /// **'Add at least 1 photo to continue'**
  String get uploadPhotoError;

  /// No description provided for @youCanChangeOrder.
  ///
  /// In en, this message translates to:
  /// **'You can change the order of the photos.'**
  String get youCanChangeOrder;

  /// No description provided for @justDragPhoto.
  ///
  /// In en, this message translates to:
  /// **'Just drag the photo to a new place.'**
  String get justDragPhoto;

  /// No description provided for @yourPhotoSuccessfullyAdded.
  ///
  /// In en, this message translates to:
  /// **'Your photo successfully added!'**
  String get yourPhotoSuccessfullyAdded;

  /// No description provided for @uploadingPhoto.
  ///
  /// In en, this message translates to:
  /// **'Uploading photo'**
  String get uploadingPhoto;

  /// No description provided for @backText.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get backText;

  /// No description provided for @choosePhotosText.
  ///
  /// In en, this message translates to:
  /// **'Choose photos from'**
  String get choosePhotosText;

  /// No description provided for @uploadText.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get uploadText;

  /// No description provided for @yourPhotosText.
  ///
  /// In en, this message translates to:
  /// **'Your photos'**
  String get yourPhotosText;

  /// No description provided for @openText.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get openText;

  /// No description provided for @cameraText.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get cameraText;

  /// No description provided for @galleryText.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get galleryText;

  /// No description provided for @doneText.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get doneText;

  /// No description provided for @recentsText.
  ///
  /// In en, this message translates to:
  /// **'Recents'**
  String get recentsText;

  /// No description provided for @selectedText.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selectedText;

  /// No description provided for @ofText.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get ofText;

  /// No description provided for @noPhotoFoundText.
  ///
  /// In en, this message translates to:
  /// **'Sorry, no photo found'**
  String get noPhotoFoundText;

  /// No description provided for @cameraError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with your camera'**
  String get cameraError;

  /// No description provided for @copyPosePhotoText.
  ///
  /// In en, this message translates to:
  /// **'Copy the pose in the photo above'**
  String get copyPosePhotoText;

  /// No description provided for @saveText.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveText;

  /// No description provided for @searchText.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchText;

  /// No description provided for @chosenText.
  ///
  /// In en, this message translates to:
  /// **'Chosen'**
  String get chosenText;

  /// No description provided for @almostDoneText.
  ///
  /// In en, this message translates to:
  /// **'Almost done!'**
  String get almostDoneText;

  /// No description provided for @nowChooseYourFavoriteAnimesText.
  ///
  /// In en, this message translates to:
  /// **'Now choose your favorite animes\nand start matching'**
  String get nowChooseYourFavoriteAnimesText;

  /// No description provided for @noAnimesFoundText.
  ///
  /// In en, this message translates to:
  /// **'Maybe there is a mistake in search? Please check and try again.'**
  String get noAnimesFoundText;

  /// No description provided for @selectedAnimeError.
  ///
  /// In en, this message translates to:
  /// **'Sorry, you have already selected 10 anime.'**
  String get selectedAnimeError;

  /// No description provided for @searchAnimesHintText.
  ///
  /// In en, this message translates to:
  /// **'Search anime'**
  String get searchAnimesHintText;

  /// No description provided for @myAnimesText.
  ///
  /// In en, this message translates to:
  /// **'My animes'**
  String get myAnimesText;

  /// No description provided for @chooseTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose'**
  String get chooseTitle;

  /// No description provided for @animeError.
  ///
  /// In en, this message translates to:
  /// **'Add at least 1 anime to continue'**
  String get animeError;

  /// No description provided for @actionGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get actionGenresTitle;

  /// No description provided for @adventureGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Adventure'**
  String get adventureGenresTitle;

  /// No description provided for @dramaGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Drama'**
  String get dramaGenresTitle;

  /// No description provided for @ecchiGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Ecchi'**
  String get ecchiGenresTitle;

  /// No description provided for @musicGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get musicGenresTitle;

  /// No description provided for @mechaGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Mecha'**
  String get mechaGenresTitle;

  /// No description provided for @horrorGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Horror'**
  String get horrorGenresTitle;

  /// No description provided for @fantasyGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Fantasy'**
  String get fantasyGenresTitle;

  /// No description provided for @mahouShoujoGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Mahou Shoujo'**
  String get mahouShoujoGenresTitle;

  /// No description provided for @psychologicalGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Psychological'**
  String get psychologicalGenresTitle;

  /// No description provided for @romanceGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Romance'**
  String get romanceGenresTitle;

  /// No description provided for @sciFiGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Sci-Fi'**
  String get sciFiGenresTitle;

  /// No description provided for @sportsGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Sports'**
  String get sportsGenresTitle;

  /// No description provided for @comedyGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Comedy'**
  String get comedyGenresTitle;

  /// No description provided for @mysteryGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Mystery'**
  String get mysteryGenresTitle;

  /// No description provided for @supernaturalGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Supernatural'**
  String get supernaturalGenresTitle;

  /// No description provided for @thrillerGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Thriller'**
  String get thrillerGenresTitle;

  /// No description provided for @sliceOfLifeGenresTitle.
  ///
  /// In en, this message translates to:
  /// **'Slice Of Life'**
  String get sliceOfLifeGenresTitle;

  /// No description provided for @enableLocationText.
  ///
  /// In en, this message translates to:
  /// **'Enable location'**
  String get enableLocationText;

  /// No description provided for @enableLocationDescription.
  ///
  /// In en, this message translates to:
  /// **'Your location will be used to show \\npotential matches near you'**
  String get enableLocationDescription;

  /// No description provided for @allowLocationText.
  ///
  /// In en, this message translates to:
  /// **'Allow location'**
  String get allowLocationText;

  /// No description provided for @locationPermissionsDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are denied'**
  String get locationPermissionsDenied;

  /// No description provided for @locationPermissionsPermanentlyDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied, we cannot request permissions.'**
  String get locationPermissionsPermanentlyDenied;

  /// No description provided for @connectYourSpotifyText.
  ///
  /// In en, this message translates to:
  /// **'Connect your Spotify'**
  String get connectYourSpotifyText;

  /// No description provided for @connectYourSpotifyDescription.
  ///
  /// In en, this message translates to:
  /// **'Show potential matches your favorite artists'**
  String get connectYourSpotifyDescription;

  /// No description provided for @connectSpotifyText.
  ///
  /// In en, this message translates to:
  /// **'Connect Spotify'**
  String get connectSpotifyText;

  /// No description provided for @topSpotifyArtistsText.
  ///
  /// In en, this message translates to:
  /// **'Top 5 Spotify Artists'**
  String get topSpotifyArtistsText;

  /// No description provided for @topSpotifyListeningSongsText.
  ///
  /// In en, this message translates to:
  /// **'Top 5 Spotify Songs'**
  String get topSpotifyListeningSongsText;

  /// No description provided for @connectText.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get connectText;

  /// No description provided for @topListeningSongText.
  ///
  /// In en, this message translates to:
  /// **'Top Listening Song'**
  String get topListeningSongText;

  /// No description provided for @topArtistsText.
  ///
  /// In en, this message translates to:
  /// **'Top Artists'**
  String get topArtistsText;

  /// No description provided for @shareInFeedText.
  ///
  /// In en, this message translates to:
  /// **'Share in feed'**
  String get shareInFeedText;

  /// No description provided for @disconnectSpotifyText.
  ///
  /// In en, this message translates to:
  /// **'Disconnect Spotify'**
  String get disconnectSpotifyText;

  /// No description provided for @myTopSpotifyListeningSongsText.
  ///
  /// In en, this message translates to:
  /// **'My top 5 Spotify listening songs'**
  String get myTopSpotifyListeningSongsText;

  /// No description provided for @myTopSpotifyArtistsText.
  ///
  /// In en, this message translates to:
  /// **'My top 5 Spotify artists'**
  String get myTopSpotifyArtistsText;

  /// No description provided for @selectedArtistsText.
  ///
  /// In en, this message translates to:
  /// **'Selected Artists'**
  String get selectedArtistsText;

  /// No description provided for @selectedTracksText.
  ///
  /// In en, this message translates to:
  /// **'Selected Tracks'**
  String get selectedTracksText;

  /// No description provided for @spotifyServerError.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please disconnect spotify and try again'**
  String get spotifyServerError;

  /// No description provided for @senpaiPremiumTitle.
  ///
  /// In en, this message translates to:
  /// **'Senpai Premium'**
  String get senpaiPremiumTitle;

  /// No description provided for @premiumHigherText.
  ///
  /// In en, this message translates to:
  /// **'Higher visibility rates'**
  String get premiumHigherText;

  /// No description provided for @premiumSuperLikesText.
  ///
  /// In en, this message translates to:
  /// **'30 Super Likes'**
  String get premiumSuperLikesText;

  /// No description provided for @premiumAbilityAnimesText.
  ///
  /// In en, this message translates to:
  /// **'Ability to add up to 15 animes'**
  String get premiumAbilityAnimesText;

  /// No description provided for @premiumUpgradeText.
  ///
  /// In en, this message translates to:
  /// **'Upgrade for \$19.99/monthly'**
  String get premiumUpgradeText;

  /// No description provided for @editProfileButton.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfileButton;

  /// No description provided for @profileFindsButton.
  ///
  /// In en, this message translates to:
  /// **'Finds'**
  String get profileFindsButton;

  /// No description provided for @verifyYourPhotosButton.
  ///
  /// In en, this message translates to:
  /// **'Verify your photos'**
  String get verifyYourPhotosButton;

  /// No description provided for @restorePurchasesButton.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restorePurchasesButton;

  /// No description provided for @activeNowTitle.
  ///
  /// In en, this message translates to:
  /// **'Active now'**
  String get activeNowTitle;

  /// No description provided for @currentlyNotActiveTitle.
  ///
  /// In en, this message translates to:
  /// **'Currently not active'**
  String get currentlyNotActiveTitle;

  /// No description provided for @waitingForPhotoVerificationTitle.
  ///
  /// In en, this message translates to:
  /// **'Waiting for photo verification'**
  String get waitingForPhotoVerificationTitle;

  /// No description provided for @milesAwayText.
  ///
  /// In en, this message translates to:
  /// **'miles away'**
  String get milesAwayText;

  /// No description provided for @findCityNearbyTitle.
  ///
  /// In en, this message translates to:
  /// **'Find a city nearby'**
  String get findCityNearbyTitle;

  /// No description provided for @yourPhotosHaveBeenVerifiedTitle.
  ///
  /// In en, this message translates to:
  /// **'Your photos have been verified!'**
  String get yourPhotosHaveBeenVerifiedTitle;

  /// No description provided for @yourPhotosHaveNotBeenVerifiedTitle.
  ///
  /// In en, this message translates to:
  /// **'Your photos have not been verified :('**
  String get yourPhotosHaveNotBeenVerifiedTitle;

  /// No description provided for @nowEveryoneWillKnowThatYouText.
  ///
  /// In en, this message translates to:
  /// **'Now everyone will know that you\'re not pretending to be someone else'**
  String get nowEveryoneWillKnowThatYouText;

  /// No description provided for @thereSeemsToBeSomethingWrongYourPhotoText.
  ///
  /// In en, this message translates to:
  /// **'There seems to be something wrong with your photo. Please try to pass the verification again'**
  String get thereSeemsToBeSomethingWrongYourPhotoText;

  /// No description provided for @closeButton.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closeButton;

  /// No description provided for @tryAgainButton.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgainButton;

  /// No description provided for @nameTitle.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameTitle;

  /// No description provided for @bioTitle.
  ///
  /// In en, this message translates to:
  /// **'Biography'**
  String get bioTitle;

  /// No description provided for @birthdayTitle.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthdayTitle;

  /// No description provided for @genderTitle.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get genderTitle;

  /// No description provided for @lookingForTitle.
  ///
  /// In en, this message translates to:
  /// **'Looking for'**
  String get lookingForTitle;

  /// No description provided for @workAndEducationTitle.
  ///
  /// In en, this message translates to:
  /// **'Work and education'**
  String get workAndEducationTitle;

  /// No description provided for @locationTitle.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get locationTitle;

  /// No description provided for @studiedAtTitle.
  ///
  /// In en, this message translates to:
  /// **'Studied at '**
  String get studiedAtTitle;

  /// No description provided for @editTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get editTitle;

  /// No description provided for @previewTitle.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get previewTitle;

  /// No description provided for @hideLocationTitle.
  ///
  /// In en, this message translates to:
  /// **'Hide my location'**
  String get hideLocationTitle;

  /// No description provided for @addTitle.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get addTitle;

  /// No description provided for @aboutMeTitle.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get aboutMeTitle;

  /// No description provided for @workingAsTitle.
  ///
  /// In en, this message translates to:
  /// **'Working as '**
  String get workingAsTitle;

  /// No description provided for @findsFiltersTitle.
  ///
  /// In en, this message translates to:
  /// **'Finds filters'**
  String get findsFiltersTitle;

  /// No description provided for @clearAllTitle.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clearAllTitle;

  /// No description provided for @ageRangeTitle.
  ///
  /// In en, this message translates to:
  /// **'Age range'**
  String get ageRangeTitle;

  /// No description provided for @distanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Distance (mi)'**
  String get distanceTitle;

  /// No description provided for @applyTitle.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get applyTitle;

  /// No description provided for @wholeCountryTitle.
  ///
  /// In en, this message translates to:
  /// **'Whole country'**
  String get wholeCountryTitle;

  /// No description provided for @photoVerifiedTitle.
  ///
  /// In en, this message translates to:
  /// **'Photo verified'**
  String get photoVerifiedTitle;

  /// No description provided for @hasBioTitle.
  ///
  /// In en, this message translates to:
  /// **'Has a bio'**
  String get hasBioTitle;

  /// No description provided for @applyChangesTitle.
  ///
  /// In en, this message translates to:
  /// **'Apply changes'**
  String get applyChangesTitle;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @senpaiPremiumDescription.
  ///
  /// In en, this message translates to:
  /// **'Higher visibility rates, 30 Super Likes \nand much more!'**
  String get senpaiPremiumDescription;

  /// No description provided for @accountSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Account settings'**
  String get accountSettingsTitle;

  /// No description provided for @phoneNumberTitle.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumberTitle;

  /// No description provided for @languageTitle.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageTitle;

  /// No description provided for @addLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Add language'**
  String get addLanguageTitle;

  /// No description provided for @pushNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Push notifications'**
  String get pushNotificationsTitle;

  /// No description provided for @activityStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Activity status'**
  String get activityStatusTitle;

  /// No description provided for @showActiveStatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Show “Active” status'**
  String get showActiveStatusTitle;

  /// No description provided for @showActiveStatusDescription.
  ///
  /// In en, this message translates to:
  /// **'The “Activity” status is displayed in the profile if the Senpai app has been used by you in the last 2 hours.'**
  String get showActiveStatusDescription;

  /// No description provided for @showRecentlyActivetatusTitle.
  ///
  /// In en, this message translates to:
  /// **'Show “Recently active” status'**
  String get showRecentlyActivetatusTitle;

  /// No description provided for @showRecentlyActivetatusDescription.
  ///
  /// In en, this message translates to:
  /// **'The “Recently activity” status is displayed in the profile if the Senpai app has been used by you in the last 24 hours.'**
  String get showRecentlyActivetatusDescription;

  /// No description provided for @deleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccountTitle;

  /// No description provided for @logoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logoutTitle;

  /// No description provided for @chooseLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get chooseLanguageTitle;

  /// No description provided for @feedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedbackTitle;

  /// No description provided for @feedbackOnSenpaiTitle.
  ///
  /// In en, this message translates to:
  /// **'Feedback on Senpai'**
  String get feedbackOnSenpaiTitle;

  /// No description provided for @feedbackOnSenpaiHintText.
  ///
  /// In en, this message translates to:
  /// **'Write your feedback on Senpai'**
  String get feedbackOnSenpaiHintText;

  /// No description provided for @sendButton.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get sendButton;

  /// No description provided for @rateSenpaiTitle.
  ///
  /// In en, this message translates to:
  /// **'Rate Senpai'**
  String get rateSenpaiTitle;

  /// No description provided for @deleteAccountDescriprion.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? We\'ll keep it for 30 days, if you change your mind.'**
  String get deleteAccountDescriprion;

  /// No description provided for @noButton.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get noButton;

  /// No description provided for @yesButton.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yesButton;

  /// No description provided for @loggingOutTitle.
  ///
  /// In en, this message translates to:
  /// **'Logging out...'**
  String get loggingOutTitle;

  /// No description provided for @pleaseWaitText.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get pleaseWaitText;

  /// No description provided for @areSureDeleteAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? If you’d just like to hide for a while or start over, you can:'**
  String get areSureDeleteAccountTitle;

  /// No description provided for @hideYourAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Hide your account, like you delete it, but you can come back when you like'**
  String get hideYourAccountTitle;

  /// No description provided for @switchNotificationsOffTitle.
  ///
  /// In en, this message translates to:
  /// **'Switch notifications off'**
  String get switchNotificationsOffTitle;

  /// No description provided for @justLogoutInsteadTitle.
  ///
  /// In en, this message translates to:
  /// **'Just logout instead'**
  String get justLogoutInsteadTitle;

  /// No description provided for @deleteYourAccountTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete your account'**
  String get deleteYourAccountTitle;

  /// No description provided for @newMatchesTitle.
  ///
  /// In en, this message translates to:
  /// **'New matches'**
  String get newMatchesTitle;

  /// No description provided for @newMessagesTitle.
  ///
  /// In en, this message translates to:
  /// **'New messages'**
  String get newMessagesTitle;

  /// No description provided for @superlikesTitle.
  ///
  /// In en, this message translates to:
  /// **'Super likes'**
  String get superlikesTitle;

  /// No description provided for @appSoundsTitle.
  ///
  /// In en, this message translates to:
  /// **'App sounds'**
  String get appSoundsTitle;

  /// No description provided for @confirmedPhoneDescription.
  ///
  /// In en, this message translates to:
  /// **'Confirmed phone number'**
  String get confirmedPhoneDescription;

  /// No description provided for @updateMyPhoneButton.
  ///
  /// In en, this message translates to:
  /// **'Update my phone number'**
  String get updateMyPhoneButton;

  /// No description provided for @areYouSureLogoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get areYouSureLogoutTitle;

  /// No description provided for @areYouSureLogoutDescription.
  ///
  /// In en, this message translates to:
  /// **'If you ask Senpai to remember you, you will be able to log in again on this device with single tap.'**
  String get areYouSureLogoutDescription;

  /// No description provided for @forgetMeTitle.
  ///
  /// In en, this message translates to:
  /// **'Forget me on this device'**
  String get forgetMeTitle;

  /// No description provided for @rememberMeTitle.
  ///
  /// In en, this message translates to:
  /// **'Remember me on this device'**
  String get rememberMeTitle;

  /// No description provided for @itsTitle.
  ///
  /// In en, this message translates to:
  /// **'It’s a'**
  String get itsTitle;

  /// No description provided for @likeWhatYouSeeTitle.
  ///
  /// In en, this message translates to:
  /// **'Like what you see?'**
  String get likeWhatYouSeeTitle;

  /// No description provided for @notForYouTitle.
  ///
  /// In en, this message translates to:
  /// **'Not for you?'**
  String get notForYouTitle;

  /// No description provided for @swipeRightDescription.
  ///
  /// In en, this message translates to:
  /// **'Swipe right if you like it'**
  String get swipeRightDescription;

  /// No description provided for @swipeLeftDescription.
  ///
  /// In en, this message translates to:
  /// **'Swipe left if not'**
  String get swipeLeftDescription;

  /// No description provided for @youAndText.
  ///
  /// In en, this message translates to:
  /// **'You and'**
  String get youAndText;

  /// No description provided for @haveLikedEachOtherText.
  ///
  /// In en, this message translates to:
  /// **'have liked each other'**
  String get haveLikedEachOtherText;

  /// No description provided for @saySomethingNiceText.
  ///
  /// In en, this message translates to:
  /// **'Say something nice'**
  String get saySomethingNiceText;

  /// No description provided for @successText.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get successText;

  /// No description provided for @messageToText.
  ///
  /// In en, this message translates to:
  /// **'Message to '**
  String get messageToText;

  /// No description provided for @sentText.
  ///
  /// In en, this message translates to:
  /// **'sent'**
  String get sentText;

  /// No description provided for @actionCableConnectionError.
  ///
  /// In en, this message translates to:
  /// **'Connection is lost. Please check your internet connection.'**
  String get actionCableConnectionError;

  /// No description provided for @actionCableCannotConnectError.
  ///
  /// In en, this message translates to:
  /// **'Cannot establish a connection. Please check your internet connection.'**
  String get actionCableCannotConnectError;

  /// No description provided for @actionCableAuthError.
  ///
  /// In en, this message translates to:
  /// **'User is not authorized. Please sign in again'**
  String get actionCableAuthError;

  /// No description provided for @outOfSuperLikes.
  ///
  /// In en, this message translates to:
  /// **'Out of Super Likes!'**
  String get outOfSuperLikes;

  /// No description provided for @doNotLoseDiamonds.
  ///
  /// In en, this message translates to:
  /// **'Don\'t lose diamonds, Refill now!'**
  String get doNotLoseDiamonds;

  /// No description provided for @superLikes.
  ///
  /// In en, this message translates to:
  /// **'Super Likes'**
  String get superLikes;

  /// No description provided for @dialogBuyButton.
  ///
  /// In en, this message translates to:
  /// **'Buy Super Likes for'**
  String get dialogBuyButton;

  /// No description provided for @noThanks.
  ///
  /// In en, this message translates to:
  /// **'No, Thanks'**
  String get noThanks;

  /// No description provided for @japaneseNotTranslated.
  ///
  /// In en, this message translates to:
  /// **'日本語'**
  String get japaneseNotTranslated;

  /// No description provided for @japanese.
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get japanese;

  /// No description provided for @onboarding1Title.
  ///
  /// In en, this message translates to:
  /// **'Find'**
  String get onboarding1Title;

  /// No description provided for @favoriteAnimesTitle.
  ///
  /// In en, this message translates to:
  /// **'Favorite anime'**
  String get favoriteAnimesTitle;

  /// No description provided for @miTitle.
  ///
  /// In en, this message translates to:
  /// **'mi'**
  String get miTitle;

  /// No description provided for @noAccountWithThisNumber.
  ///
  /// In en, this message translates to:
  /// **'There is no account with this number'**
  String get noAccountWithThisNumber;

  /// No description provided for @dearUserText.
  ///
  /// In en, this message translates to:
  /// **'Dear User'**
  String get dearUserText;

  /// No description provided for @dearUserDescription.
  ///
  /// In en, this message translates to:
  /// **'We care about your privacy and data security. Your information will not ever be sold to third parties, but used internally to make the app better.'**
  String get dearUserDescription;

  /// No description provided for @whatYouGetText.
  ///
  /// In en, this message translates to:
  /// **'What you get:'**
  String get whatYouGetText;

  /// No description provided for @nextPaymentText.
  ///
  /// In en, this message translates to:
  /// **'Next payment:'**
  String get nextPaymentText;

  /// No description provided for @bearWithUsTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Senpai!'**
  String get bearWithUsTitle;

  /// No description provided for @bearWithUsDescription.
  ///
  /// In en, this message translates to:
  /// **'Please bear with us, as we continue to grow and more profiles are available!'**
  String get bearWithUsDescription;

  /// No description provided for @unableToConnectToThePaymentsProcessor.
  ///
  /// In en, this message translates to:
  /// **'Unable to connect to the payments processor'**
  String get unableToConnectToThePaymentsProcessor;

  /// No description provided for @invalidPurchase.
  ///
  /// In en, this message translates to:
  /// **'Invalid Purchase'**
  String get invalidPurchase;

  /// No description provided for @senpaiPremiumIsActivated.
  ///
  /// In en, this message translates to:
  /// **'Senpai Premium is activated!'**
  String get senpaiPremiumIsActivated;

  /// No description provided for @senpaiDatingForAnimeFans.
  ///
  /// In en, this message translates to:
  /// **'Senpai - Dating for Anime Fans\n'**
  String get senpaiDatingForAnimeFans;

  /// No description provided for @findYourMatchToday.
  ///
  /// In en, this message translates to:
  /// **'Find your match today.\n'**
  String get findYourMatchToday;

  /// No description provided for @openGalleryButtonText.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get openGalleryButtonText;

  /// No description provided for @openCameraButtonText.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get openCameraButtonText;

  /// No description provided for @maximumAttachmentSizeExceededError.
  ///
  /// In en, this message translates to:
  /// **'Maximum attachment size exceeded'**
  String get maximumAttachmentSizeExceededError;

  /// No description provided for @portugueseNotTranslated.
  ///
  /// In en, this message translates to:
  /// **'Português'**
  String get portugueseNotTranslated;

  /// No description provided for @portuguese.
  ///
  /// In en, this message translates to:
  /// **'Portuguese'**
  String get portuguese;

  /// No description provided for @eventsTitle.
  ///
  /// In en, this message translates to:
  /// **'Events'**
  String get eventsTitle;

  /// No description provided for @createEventTitle.
  ///
  /// In en, this message translates to:
  /// **'Create Event'**
  String get createEventTitle;

  /// No description provided for @addPromoImageText.
  ///
  /// In en, this message translates to:
  /// **'Add Promo Image'**
  String get addPromoImageText;

  /// No description provided for @eventNameText.
  ///
  /// In en, this message translates to:
  /// **'Event Name'**
  String get eventNameText;

  /// No description provided for @aboutEventText.
  ///
  /// In en, this message translates to:
  /// **'About Event'**
  String get aboutEventText;

  /// No description provided for @dateText.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get dateText;

  /// No description provided for @canBeRangeText.
  ///
  /// In en, this message translates to:
  /// **'Can be range'**
  String get canBeRangeText;

  /// No description provided for @timeText.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get timeText;

  /// No description provided for @maxPartySizeText.
  ///
  /// In en, this message translates to:
  /// **'Max Party Size'**
  String get maxPartySizeText;

  /// No description provided for @availableSlotsText.
  ///
  /// In en, this message translates to:
  /// **'1-10 available slots'**
  String get availableSlotsText;

  /// No description provided for @requiresPaymentText.
  ///
  /// In en, this message translates to:
  /// **'Requires Payment?'**
  String get requiresPaymentText;

  /// No description provided for @cosplayText.
  ///
  /// In en, this message translates to:
  /// **'Cosplay'**
  String get cosplayText;

  /// No description provided for @optionalButton.
  ///
  /// In en, this message translates to:
  /// **'Optional'**
  String get optionalButton;

  /// No description provided for @eventAssociatedWithConventionText.
  ///
  /// In en, this message translates to:
  /// **'Is the event associated with a Convention?'**
  String get eventAssociatedWithConventionText;

  /// No description provided for @findConventionText.
  ///
  /// In en, this message translates to:
  /// **'Find Convention'**
  String get findConventionText;

  /// No description provided for @selectConventionText.
  ///
  /// In en, this message translates to:
  /// **'Select Convention'**
  String get selectConventionText;

  /// No description provided for @saveChangesButton.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChangesButton;

  /// No description provided for @filterTitle.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filterTitle;

  /// No description provided for @searchCountryCityText.
  ///
  /// In en, this message translates to:
  /// **'Search country, city'**
  String get searchCountryCityText;

  /// No description provided for @freeTitle.
  ///
  /// In en, this message translates to:
  /// **'FREE'**
  String get freeTitle;

  /// No description provided for @paidTitle.
  ///
  /// In en, this message translates to:
  /// **'Paid'**
  String get paidTitle;

  /// No description provided for @hostRatingFromText.
  ///
  /// In en, this message translates to:
  /// **'Host Rating from:'**
  String get hostRatingFromText;

  /// No description provided for @eventsConventionsTitle.
  ///
  /// In en, this message translates to:
  /// **'Events & Conventions'**
  String get eventsConventionsTitle;

  /// No description provided for @noEventsFoundText.
  ///
  /// In en, this message translates to:
  /// **'Oops, no Events found!'**
  String get noEventsFoundText;

  /// No description provided for @noEventsFoundDescription.
  ///
  /// In en, this message translates to:
  /// **'Try tweaking your filters or come\nback later for more fun options.'**
  String get noEventsFoundDescription;

  /// No description provided for @openAppSettings.
  ///
  /// In en, this message translates to:
  /// **'Open App Settings'**
  String get openAppSettings;

  /// No description provided for @cameraErrorCheckPermission.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with your camera, please check permission.'**
  String get cameraErrorCheckPermission;

  /// No description provided for @editPromoImage.
  ///
  /// In en, this message translates to:
  /// **'Edit Promo Image'**
  String get editPromoImage;

  /// No description provided for @invalidEventNameError.
  ///
  /// In en, this message translates to:
  /// **'Invalid event name. Please try again'**
  String get invalidEventNameError;

  /// No description provided for @invalidDescriptionError.
  ///
  /// In en, this message translates to:
  /// **'Invalid description. Please try again'**
  String get invalidDescriptionError;

  /// No description provided for @venueText.
  ///
  /// In en, this message translates to:
  /// **'Venue'**
  String get venueText;

  /// No description provided for @invalidVenueError.
  ///
  /// In en, this message translates to:
  /// **'Invalid venue. Please try again'**
  String get invalidVenueError;

  /// No description provided for @invalidMaxPartySizeError.
  ///
  /// In en, this message translates to:
  /// **'Invalid max party size. Please try again'**
  String get invalidMaxPartySizeError;

  /// No description provided for @normalEvents.
  ///
  /// In en, this message translates to:
  /// **'Normal Events'**
  String get normalEvents;

  /// No description provided for @conventionsText.
  ///
  /// In en, this message translates to:
  /// **'Conventions'**
  String get conventionsText;

  /// No description provided for @yourEvents.
  ///
  /// In en, this message translates to:
  /// **'Your Events'**
  String get yourEvents;

  /// No description provided for @invalidLocationError.
  ///
  /// In en, this message translates to:
  /// **'Invalid location. Please try again'**
  String get invalidLocationError;

  /// This is the title of the event management app bar
  ///
  /// In en, this message translates to:
  /// **'Event Management'**
  String get eventManagementTitle;

  /// No description provided for @paidEntryText.
  ///
  /// In en, this message translates to:
  /// **'Paid Entry'**
  String get paidEntryText;

  /// No description provided for @associationWithConvention.
  ///
  /// In en, this message translates to:
  /// **'Association with Convention:'**
  String get associationWithConvention;

  /// No description provided for @attendButton.
  ///
  /// In en, this message translates to:
  /// **'Attend'**
  String get attendButton;

  /// No description provided for @hostTheEventText.
  ///
  /// In en, this message translates to:
  /// **'Host of the event'**
  String get hostTheEventText;

  /// No description provided for @maximumPartyMemberLimit.
  ///
  /// In en, this message translates to:
  /// **'Maximum party member limit: 10'**
  String get maximumPartyMemberLimit;

  /// No description provided for @youCanParticipateInPartyDescription.
  ///
  /// In en, this message translates to:
  /// **'You can participate in a party, find new friends and have a good time.'**
  String get youCanParticipateInPartyDescription;

  /// No description provided for @associatedEventsTitle.
  ///
  /// In en, this message translates to:
  /// **'Associated Events'**
  String get associatedEventsTitle;

  /// No description provided for @startDateTitle.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get startDateTitle;

  /// No description provided for @endDateTitle.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get endDateTitle;

  /// No description provided for @creatingEventTitle.
  ///
  /// In en, this message translates to:
  /// **'Creating an event'**
  String get creatingEventTitle;

  /// No description provided for @creatingEventDescription.
  ///
  /// In en, this message translates to:
  /// **'You must be verified before you can create an event'**
  String get creatingEventDescription;

  /// No description provided for @verifyNowButton.
  ///
  /// In en, this message translates to:
  /// **'Verify Now'**
  String get verifyNowButton;

  /// No description provided for @hostAnEventTitle.
  ///
  /// In en, this message translates to:
  /// **'Host an Event'**
  String get hostAnEventTitle;

  /// No description provided for @hostAnEventDescription.
  ///
  /// In en, this message translates to:
  /// **'Whether it\'s a night out for bowling or going out for drinks or assembling your cosplay squad for the convention, host an event today and build your party!'**
  String get hostAnEventDescription;

  /// No description provided for @inviteFriendsGetPremiumText.
  ///
  /// In en, this message translates to:
  /// **'Invite Friends, Get Premium!'**
  String get inviteFriendsGetPremiumText;

  /// No description provided for @keepInvitingPeopleDescription.
  ///
  /// In en, this message translates to:
  /// **'Keep inviting people and soon you will get a Premium account․'**
  String get keepInvitingPeopleDescription;

  /// No description provided for @attendSuccessfulDescription.
  ///
  /// In en, this message translates to:
  /// **'You have successfully applied to join the party and will be notified when the host makes a decision.'**
  String get attendSuccessfulDescription;

  /// No description provided for @attendSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get attendSuccessTitle;

  /// No description provided for @scanQRCodeTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan QR Code'**
  String get scanQRCodeTitle;

  /// No description provided for @congratulationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Congratulations!'**
  String get congratulationsTitle;

  /// No description provided for @youHavePremiumAccountForMonth.
  ///
  /// In en, this message translates to:
  /// **'You have a Premium account for 1 month.'**
  String get youHavePremiumAccountForMonth;

  /// No description provided for @higherVisibilityRatesSuperLikesAndMuchMore.
  ///
  /// In en, this message translates to:
  /// **'Higher visibility rates, 30 Super Likes and much more!'**
  String get higherVisibilityRatesSuperLikesAndMuchMore;

  /// No description provided for @backHomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Back Home'**
  String get backHomeTitle;

  /// No description provided for @openInvitesFilterTitle.
  ///
  /// In en, this message translates to:
  /// **'Accepting invites'**
  String get openInvitesFilterTitle;

  /// No description provided for @closedInvitesFilterTitle.
  ///
  /// In en, this message translates to:
  /// **'Party filled'**
  String get closedInvitesFilterTitle;

  /// No description provided for @manageSubscriptionTitle.
  ///
  /// In en, this message translates to:
  /// **'Manage Subscription'**
  String get manageSubscriptionTitle;

  /// No description provided for @cancelAnytimeTitle.
  ///
  /// In en, this message translates to:
  /// **'Cancel Anytime'**
  String get cancelAnytimeTitle;

  /// No description provided for @conventionWebsiteText.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get conventionWebsiteText;

  /// No description provided for @oopsNoAnimeFound.
  ///
  /// In en, this message translates to:
  /// **'Oops, no anime found!'**
  String get oopsNoAnimeFound;

  /// No description provided for @spanishNotTranslated.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get spanishNotTranslated;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @doxxingIdentityThreat.
  ///
  /// In en, this message translates to:
  /// **'Doxxing / Identity threat'**
  String get doxxingIdentityThreat;

  /// No description provided for @favoriteAnime.
  ///
  /// In en, this message translates to:
  /// **'Favorite Anime'**
  String get favoriteAnime;

  /// No description provided for @lobbyAppBarTitle.
  ///
  /// In en, this message translates to:
  /// **'Lobby'**
  String get lobbyAppBarTitle;

  /// No description provided for @unlimitedVideoCalls.
  ///
  /// In en, this message translates to:
  /// **'Unlimited Video Calls'**
  String get unlimitedVideoCalls;

  /// No description provided for @waitingForMatch.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a Match'**
  String get waitingForMatch;

  /// No description provided for @joinPool.
  ///
  /// In en, this message translates to:
  /// **'Join Pool'**
  String get joinPool;

  /// No description provided for @decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline;

  /// No description provided for @acceptPromptText.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get acceptPromptText;

  /// No description provided for @startMatching.
  ///
  /// In en, this message translates to:
  /// **'Start Matching'**
  String get startMatching;

  /// No description provided for @verificationPrompt.
  ///
  /// In en, this message translates to:
  /// **'Verification Required!'**
  String get verificationPrompt;

  /// No description provided for @verificationDescription.
  ///
  /// In en, this message translates to:
  /// **'Verify your profile to enable video chat!'**
  String get verificationDescription;

  /// No description provided for @verificationAmenity.
  ///
  /// In en, this message translates to:
  /// **'To ensure a safe and genuine experience, please verify your profile.'**
  String get verificationAmenity;

  /// No description provided for @cameraAmenity.
  ///
  /// In en, this message translates to:
  /// **'Use your camera in a well-lit area for the best results'**
  String get cameraAmenity;

  /// No description provided for @startVerification.
  ///
  /// In en, this message translates to:
  /// **'Start Verification'**
  String get startVerification;

  /// No description provided for @premiumAvatars.
  ///
  /// In en, this message translates to:
  /// **'Premium Avatars'**
  String get premiumAvatars;

  /// No description provided for @higherVisibility.
  ///
  /// In en, this message translates to:
  /// **'Higher Visibility'**
  String get higherVisibility;

  /// No description provided for @avatarShop.
  ///
  /// In en, this message translates to:
  /// **'Avatar Shop'**
  String get avatarShop;

  /// No description provided for @avatarSkinShop.
  ///
  /// In en, this message translates to:
  /// **'Avatar Skin Shop'**
  String get avatarSkinShop;

  /// No description provided for @usersCurrentlyInLobby.
  ///
  /// In en, this message translates to:
  /// **'Users currently in the Lobby.'**
  String get usersCurrentlyInLobby;

  /// No description provided for @exitLobby.
  ///
  /// In en, this message translates to:
  /// **'Exit Lobby'**
  String get exitLobby;

  /// No description provided for @waitingInTheLobby.
  ///
  /// In en, this message translates to:
  /// **'Waiting in the lobby'**
  String get waitingInTheLobby;

  /// No description provided for @startMatchingBtn.
  ///
  /// In en, this message translates to:
  /// **'Start Matching'**
  String get startMatchingBtn;

  /// No description provided for @findingMatch.
  ///
  /// In en, this message translates to:
  /// **'Finding a Match'**
  String get findingMatch;

  /// No description provided for @invitationPrompt.
  ///
  /// In en, this message translates to:
  /// **'has sent you a video chat invitation!'**
  String get invitationPrompt;

  /// No description provided for @unknownUserName.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknownUserName;

  /// No description provided for @rejectLobbyInvitation.
  ///
  /// In en, this message translates to:
  /// **'Reject'**
  String get rejectLobbyInvitation;

  /// No description provided for @inviteChatStatus.
  ///
  /// In en, this message translates to:
  /// **'Invite to Chat'**
  String get inviteChatStatus;

  /// No description provided for @pendingInviteStatus.
  ///
  /// In en, this message translates to:
  /// **'Inviting ...'**
  String get pendingInviteStatus;

  /// No description provided for @doneInviteStatus.
  ///
  /// In en, this message translates to:
  /// **'Invited'**
  String get doneInviteStatus;

  /// No description provided for @failedInviteStatus.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failedInviteStatus;

  /// No description provided for @videoChatDialogScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Video Request'**
  String get videoChatDialogScreenTitle;

  /// No description provided for @backToPool.
  ///
  /// In en, this message translates to:
  /// **'Back to the Pool'**
  String get backToPool;

  /// No description provided for @matchFoundTitle.
  ///
  /// In en, this message translates to:
  /// **'MATCH FOUND'**
  String get matchFoundTitle;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es', 'ja', 'pt'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'ja':
      return AppLocalizationsJa();
    case 'pt':
      return AppLocalizationsPt();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
