import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';

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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja')
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

  /// No description provided for @yourWaifu.
  ///
  /// In en, this message translates to:
  /// **'your waifu'**
  String get yourWaifu;

  /// No description provided for @anime.
  ///
  /// In en, this message translates to:
  /// **'Anime'**
  String get anime;

  /// No description provided for @loversUnite.
  ///
  /// In en, this message translates to:
  /// **'lovers unite'**
  String get loversUnite;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @matching.
  ///
  /// In en, this message translates to:
  /// **'matching'**
  String get matching;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @byTappingCreateAccountOrSignInYouAgreeTo.
  ///
  /// In en, this message translates to:
  /// **'By tapping \"Create account\" or \"Sign in\", you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.'**
  String get byTappingCreateAccountOrSignInYouAgreeTo;

  /// No description provided for @byTappingCreateAccountOrSignInYouAgreeTo2.
  ///
  /// In en, this message translates to:
  /// **'By tapping \"Create account\" or \"Sign in\", you agree to our'**
  String get byTappingCreateAccountOrSignInYouAgreeTo2;

  /// No description provided for @terms.
  ///
  /// In en, this message translates to:
  /// **'Terms'**
  String get terms;

  /// No description provided for @learnHowWeProcessYourDataInOur.
  ///
  /// In en, this message translates to:
  /// **' Learn how we process your data in our'**
  String get learnHowWeProcessYourDataInOur;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @cookiesPolicy.
  ///
  /// In en, this message translates to:
  /// **'Cookies Policy'**
  String get cookiesPolicy;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create account'**
  String get createAccount;

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

  /// No description provided for @enterYourPhone.
  ///
  /// In en, this message translates to:
  /// **'Enter your phone'**
  String get enterYourPhone;

  /// No description provided for @labelContinue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get labelContinue;

  /// No description provided for @invalidPhoneNumberPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number. Please try again'**
  String get invalidPhoneNumberPleaseTryAgain;

  /// No description provided for @weWillSendATextWithAVerificationCode.
  ///
  /// In en, this message translates to:
  /// **'We will send a text with a verification code.'**
  String get weWillSendATextWithAVerificationCode;

  /// No description provided for @somethingWentWrongPleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please try again'**
  String get somethingWentWrongPleaseTryAgain;

  /// No description provided for @theresNoExistingAccountAssociatedWithThisPh.
  ///
  /// In en, this message translates to:
  /// **'There\'s no existing account associated with this phone number'**
  String get theresNoExistingAccountAssociatedWithThisPh;

  /// No description provided for @thisUserAlreadyHasAnAccount.
  ///
  /// In en, this message translates to:
  /// **'This user already has an account'**
  String get thisUserAlreadyHasAnAccount;

  /// No description provided for @iAgreeToReceiveSMSTextsFromSenpaiAtThePh.
  ///
  /// In en, this message translates to:
  /// **'I agree to receive SMS texts from Senpai at the phone number provided. Reply STOP to opt-out.'**
  String get iAgreeToReceiveSMSTextsFromSenpaiAtThePh;

  /// No description provided for @yourCodeIs.
  ///
  /// In en, this message translates to:
  /// **'Your code is'**
  String get yourCodeIs;

  /// No description provided for @weSentTheVerificationCodeOn.
  ///
  /// In en, this message translates to:
  /// **'We sent the verification code on'**
  String get weSentTheVerificationCodeOn;

  /// No description provided for @invalidCodePleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Invalid code. Please try again'**
  String get invalidCodePleaseTryAgain;

  /// No description provided for @codeNotReceivedResend.
  ///
  /// In en, this message translates to:
  /// **'Code not received? Resend'**
  String get codeNotReceivedResend;

  /// No description provided for @skipThisStep.
  ///
  /// In en, this message translates to:
  /// **'Skip this step'**
  String get skipThisStep;

  /// No description provided for @photoVerify.
  ///
  /// In en, this message translates to:
  /// **'Photo verify'**
  String get photoVerify;

  /// No description provided for @photoVerifyToLetEveryoneKnowYourPhotosAre.
  ///
  /// In en, this message translates to:
  /// **'Photo verify to let everyone know your photos are really you'**
  String get photoVerifyToLetEveryoneKnowYourPhotosAre;

  /// No description provided for @verifyByPhoto.
  ///
  /// In en, this message translates to:
  /// **'Verify by photo'**
  String get verifyByPhoto;

  /// No description provided for @match.
  ///
  /// In en, this message translates to:
  /// **'Match'**
  String get match;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @happyWithYourPhoto.
  ///
  /// In en, this message translates to:
  /// **'Happy with your photo?'**
  String get happyWithYourPhoto;

  /// No description provided for @weWillScanYourPhotoToVerifyYourIdentity.
  ///
  /// In en, this message translates to:
  /// **'We will scan your photo to verify your identity'**
  String get weWillScanYourPhotoToVerifyYourIdentity;

  /// No description provided for @retake.
  ///
  /// In en, this message translates to:
  /// **'Retake'**
  String get retake;

  /// No description provided for @agreeAndSubmit.
  ///
  /// In en, this message translates to:
  /// **'Agree and submit'**
  String get agreeAndSubmit;

  /// No description provided for @thanksALot.
  ///
  /// In en, this message translates to:
  /// **'Thanks a lot!'**
  String get thanksALot;

  /// No description provided for @weHaveReceivedYourPhotoAndWillAnswerWithin.
  ///
  /// In en, this message translates to:
  /// **'We have received your photo and will answer within 1-2 business days'**
  String get weHaveReceivedYourPhotoAndWillAnswerWithin;

  /// No description provided for @startMatching.
  ///
  /// In en, this message translates to:
  /// **'Start matching!'**
  String get startMatching;

  /// No description provided for @welcomeToSenpai.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Senpai!'**
  String get welcomeToSenpai;

  /// No description provided for @fillYourProfileAndStartMatching.
  ///
  /// In en, this message translates to:
  /// **'Fill your profile and start matching'**
  String get fillYourProfileAndStartMatching;

  /// No description provided for @fillTheProfile.
  ///
  /// In en, this message translates to:
  /// **'Fill the profile'**
  String get fillTheProfile;

  /// No description provided for @yourFirstName.
  ///
  /// In en, this message translates to:
  /// **'Your first name'**
  String get yourFirstName;

  /// No description provided for @thisIsHowItWillAppearInSenpai.
  ///
  /// In en, this message translates to:
  /// **'This is how it will appear in Senpai'**
  String get thisIsHowItWillAppearInSenpai;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @failedToGetConversationsFromTheServer.
  ///
  /// In en, this message translates to:
  /// **'Failed to get conversations from the server'**
  String get failedToGetConversationsFromTheServer;

  /// No description provided for @startLiking.
  ///
  /// In en, this message translates to:
  /// **'Start liking'**
  String get startLiking;

  /// No description provided for @whenYouMatchWithOtherUsersTheyWillAppearH.
  ///
  /// In en, this message translates to:
  /// **'When you match with other users they will appear here'**
  String get whenYouMatchWithOtherUsersTheyWillAppearH;

  /// No description provided for @youMatchedWith.
  ///
  /// In en, this message translates to:
  /// **'You matched with'**
  String get youMatchedWith;

  /// No description provided for @dontWaitTooLongSayHello.
  ///
  /// In en, this message translates to:
  /// **'Don\'t wait too long, say hello :)'**
  String get dontWaitTooLongSayHello;

  /// No description provided for @sticker.
  ///
  /// In en, this message translates to:
  /// **'🌄 Sticker'**
  String get sticker;

  /// No description provided for @animation.
  ///
  /// In en, this message translates to:
  /// **'🌄 Animation'**
  String get animation;

  /// No description provided for @gif.
  ///
  /// In en, this message translates to:
  /// **'🌄 Gif'**
  String get gif;

  /// No description provided for @attachment.
  ///
  /// In en, this message translates to:
  /// **'🌄 Attachment'**
  String get attachment;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @tryToSearchYourMatchesOrChats.
  ///
  /// In en, this message translates to:
  /// **'Try to search your matches or chats'**
  String get tryToSearchYourMatchesOrChats;

  /// No description provided for @oopsNoMatchesFound.
  ///
  /// In en, this message translates to:
  /// **'Oops. No matches found'**
  String get oopsNoMatchesFound;

  /// No description provided for @maybeThereIsAMistakeInSearchPleaseCheckAn.
  ///
  /// In en, this message translates to:
  /// **'Maybe there is a mistake in search? Please check and try again'**
  String get maybeThereIsAMistakeInSearchPleaseCheckAn;

  /// No description provided for @stickers.
  ///
  /// In en, this message translates to:
  /// **'Stickers'**
  String get stickers;

  /// No description provided for @gIPHYCompanyNameDoNotTranslate.
  ///
  /// In en, this message translates to:
  /// **'GIPHY (company name, do not translate)'**
  String get gIPHYCompanyNameDoNotTranslate;

  /// No description provided for @anime2.
  ///
  /// In en, this message translates to:
  /// **'Anime'**
  String get anime2;

  /// No description provided for @myFavoriteAnimes.
  ///
  /// In en, this message translates to:
  /// **'My favorite animes'**
  String get myFavoriteAnimes;

  /// No description provided for @searchChatOrMatch.
  ///
  /// In en, this message translates to:
  /// **'Search chat or match'**
  String get searchChatOrMatch;

  /// No description provided for @matches.
  ///
  /// In en, this message translates to:
  /// **'Matches'**
  String get matches;

  /// No description provided for @messages.
  ///
  /// In en, this message translates to:
  /// **'Messages'**
  String get messages;

  /// No description provided for @sendMessage.
  ///
  /// In en, this message translates to:
  /// **'Send message...'**
  String get sendMessage;

  /// No description provided for @invalidFirstNamePleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Invalid first name. Please try again'**
  String get invalidFirstNamePleaseTryAgain;

  /// No description provided for @activeNow.
  ///
  /// In en, this message translates to:
  /// **'Active now'**
  String get activeNow;

  /// No description provided for @activeRecently.
  ///
  /// In en, this message translates to:
  /// **'Active recently'**
  String get activeRecently;

  /// No description provided for @failedToSendMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed to send message'**
  String get failedToSendMessage;

  /// No description provided for @failedToAddReactionToMessage.
  ///
  /// In en, this message translates to:
  /// **'Failed to add reaction to message'**
  String get failedToAddReactionToMessage;

  /// No description provided for @addADescription.
  ///
  /// In en, this message translates to:
  /// **'Add a description'**
  String get addADescription;

  /// No description provided for @oopsNoAnimesFound.
  ///
  /// In en, this message translates to:
  /// **'Oops. No animes found'**
  String get oopsNoAnimesFound;

  /// No description provided for @maybeThereIsAMistakeInSearchPleaseCheckAn2.
  ///
  /// In en, this message translates to:
  /// **'Maybe there is a mistake in search? Please check and try again'**
  String get maybeThereIsAMistakeInSearchPleaseCheckAn2;

  /// No description provided for @searchInGIPHY.
  ///
  /// In en, this message translates to:
  /// **'Search in GIPHY'**
  String get searchInGIPHY;

  /// No description provided for @viewProfile.
  ///
  /// In en, this message translates to:
  /// **'View Profile'**
  String get viewProfile;

  /// No description provided for @unmatch.
  ///
  /// In en, this message translates to:
  /// **'Unmatch'**
  String get unmatch;

  /// No description provided for @report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get report;

  /// No description provided for @inappropriateBehavior.
  ///
  /// In en, this message translates to:
  /// **'Inappropriate Behavior'**
  String get inappropriateBehavior;

  /// No description provided for @spam.
  ///
  /// In en, this message translates to:
  /// **'Spam'**
  String get spam;

  /// No description provided for @sexualAbuse.
  ///
  /// In en, this message translates to:
  /// **'Sexual Abuse'**
  String get sexualAbuse;

  /// No description provided for @doxxingIdentityThreat.
  ///
  /// In en, this message translates to:
  /// **'Doxxing / Identity threat'**
  String get doxxingIdentityThreat;

  /// No description provided for @areYouSureYouWantToUnmatchThisUser.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to unmatch this user?'**
  String get areYouSureYouWantToUnmatchThisUser;

  /// No description provided for @yourBirthday.
  ///
  /// In en, this message translates to:
  /// **'Your birthday'**
  String get yourBirthday;

  /// No description provided for @yourAgeWillBePublic.
  ///
  /// In en, this message translates to:
  /// **'Your age will be public'**
  String get yourAgeWillBePublic;

  /// No description provided for @cancel2.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel2;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get ok;

  /// No description provided for @pleaseSelectADate.
  ///
  /// In en, this message translates to:
  /// **'Please select a date'**
  String get pleaseSelectADate;

  /// No description provided for @youAre.
  ///
  /// In en, this message translates to:
  /// **'You are'**
  String get youAre;

  /// No description provided for @howDoYouIdentify.
  ///
  /// In en, this message translates to:
  /// **'How do you identify?'**
  String get howDoYouIdentify;

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

  /// No description provided for @youLookingFor.
  ///
  /// In en, this message translates to:
  /// **'You looking for'**
  String get youLookingFor;

  /// No description provided for @whoShouldWeShowForYou.
  ///
  /// In en, this message translates to:
  /// **'Who should we show for you'**
  String get whoShouldWeShowForYou;

  /// No description provided for @both.
  ///
  /// In en, this message translates to:
  /// **'Both'**
  String get both;

  /// No description provided for @yourOccupation.
  ///
  /// In en, this message translates to:
  /// **'Your occupation'**
  String get yourOccupation;

  /// No description provided for @thisIsHowItWillAppearInSenpai2.
  ///
  /// In en, this message translates to:
  /// **'This is how it will appear in Senpai'**
  String get thisIsHowItWillAppearInSenpai2;

  /// No description provided for @universityName.
  ///
  /// In en, this message translates to:
  /// **'University name'**
  String get universityName;

  /// No description provided for @jobTitle.
  ///
  /// In en, this message translates to:
  /// **'Job title'**
  String get jobTitle;

  /// No description provided for @ifYouDontHaveAJobOrDontWantToFillInThi.
  ///
  /// In en, this message translates to:
  /// **'If you don’t have a job or don’t want to fill in this field, just skip it.'**
  String get ifYouDontHaveAJobOrDontWantToFillInThi;

  /// No description provided for @invalidUniversityNamePleaseTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Invalid university name. Please try again'**
  String get invalidUniversityNamePleaseTryAgain;

  /// No description provided for @noUniversityWithSuchANameWasFound.
  ///
  /// In en, this message translates to:
  /// **'No university with such a name was found.'**
  String get noUniversityWithSuchANameWasFound;

  /// No description provided for @yourStory.
  ///
  /// In en, this message translates to:
  /// **'Your story'**
  String get yourStory;

  /// No description provided for @tellUsALittleBitAboutYourself.
  ///
  /// In en, this message translates to:
  /// **'Tell us a little bit about yourself'**
  String get tellUsALittleBitAboutYourself;

  /// No description provided for @shortInfoAboutYou.
  ///
  /// In en, this message translates to:
  /// **'Short info about you'**
  String get shortInfoAboutYou;

  /// No description provided for @uploadPhotos.
  ///
  /// In en, this message translates to:
  /// **'Upload photos'**
  String get uploadPhotos;

  /// No description provided for @addAtLeast2PhotosToContinue.
  ///
  /// In en, this message translates to:
  /// **'Add at least 2 photos to continue'**
  String get addAtLeast2PhotosToContinue;

  /// No description provided for @addAtLeast1PhotoToContinue.
  ///
  /// In en, this message translates to:
  /// **'Add at least 1 photo to continue'**
  String get addAtLeast1PhotoToContinue;

  /// No description provided for @youCanChangeTheOrderOfThePhotos.
  ///
  /// In en, this message translates to:
  /// **'You can change the order of the photos.'**
  String get youCanChangeTheOrderOfThePhotos;

  /// No description provided for @justDragThePhotoToANewPlace.
  ///
  /// In en, this message translates to:
  /// **'Just drag the photo to a new place.'**
  String get justDragThePhotoToANewPlace;

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

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @choosePhotosFrom.
  ///
  /// In en, this message translates to:
  /// **'Choose photos from'**
  String get choosePhotosFrom;

  /// No description provided for @upload.
  ///
  /// In en, this message translates to:
  /// **'Upload'**
  String get upload;

  /// No description provided for @yourPhotos.
  ///
  /// In en, this message translates to:
  /// **'Your photos'**
  String get yourPhotos;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @recents.
  ///
  /// In en, this message translates to:
  /// **'Recents'**
  String get recents;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected'**
  String get selected;

  /// No description provided for @labelOf.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get labelOf;

  /// No description provided for @sorryNoPhotoFound.
  ///
  /// In en, this message translates to:
  /// **'Sorry, no photo found'**
  String get sorryNoPhotoFound;

  /// No description provided for @somethingWentWrongWithYourCamera.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong with your camera'**
  String get somethingWentWrongWithYourCamera;

  /// No description provided for @copyThePoseInThePhotoAbove.
  ///
  /// In en, this message translates to:
  /// **'Copy the pose in the photo above'**
  String get copyThePoseInThePhotoAbove;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @chosen.
  ///
  /// In en, this message translates to:
  /// **'Chosen'**
  String get chosen;

  /// No description provided for @almostDone.
  ///
  /// In en, this message translates to:
  /// **'Almost done!'**
  String get almostDone;

  /// No description provided for @nowChooseYourFavoriteAnimesAndStartMatching.
  ///
  /// In en, this message translates to:
  /// **'Now choose your favorite animes and start matching'**
  String get nowChooseYourFavoriteAnimesAndStartMatching;

  /// No description provided for @oopsNoAnimeFound.
  ///
  /// In en, this message translates to:
  /// **'Oops. No anime found.'**
  String get oopsNoAnimeFound;

  /// No description provided for @maybeThereIsAMistakeInSearchPleaseCheckAn3.
  ///
  /// In en, this message translates to:
  /// **'Maybe there is a mistake in search? Please check and try again.'**
  String get maybeThereIsAMistakeInSearchPleaseCheckAn3;

  /// No description provided for @sorryYouHaveAlreadySelected10Anime.
  ///
  /// In en, this message translates to:
  /// **'Sorry, you have already selected 10 anime.'**
  String get sorryYouHaveAlreadySelected10Anime;

  /// No description provided for @searchAnime.
  ///
  /// In en, this message translates to:
  /// **'Search anime'**
  String get searchAnime;

  /// No description provided for @myAnimes.
  ///
  /// In en, this message translates to:
  /// **'My animes'**
  String get myAnimes;

  /// No description provided for @choose.
  ///
  /// In en, this message translates to:
  /// **'Choose'**
  String get choose;

  /// No description provided for @addAtLeast1AnimeToContinue.
  ///
  /// In en, this message translates to:
  /// **'Add at least 1 anime to continue'**
  String get addAtLeast1AnimeToContinue;

  /// No description provided for @action.
  ///
  /// In en, this message translates to:
  /// **'Action'**
  String get action;

  /// No description provided for @adventure.
  ///
  /// In en, this message translates to:
  /// **'Adventure'**
  String get adventure;

  /// No description provided for @drama.
  ///
  /// In en, this message translates to:
  /// **'Drama'**
  String get drama;

  /// No description provided for @ecchi.
  ///
  /// In en, this message translates to:
  /// **'Ecchi'**
  String get ecchi;

  /// No description provided for @music.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get music;

  /// No description provided for @mecha.
  ///
  /// In en, this message translates to:
  /// **'Mecha'**
  String get mecha;

  /// No description provided for @horror.
  ///
  /// In en, this message translates to:
  /// **'Horror'**
  String get horror;

  /// No description provided for @fantasy.
  ///
  /// In en, this message translates to:
  /// **'Fantasy'**
  String get fantasy;

  /// No description provided for @mahouShoujo.
  ///
  /// In en, this message translates to:
  /// **'Mahou Shoujo'**
  String get mahouShoujo;

  /// No description provided for @psychological.
  ///
  /// In en, this message translates to:
  /// **'Psychological'**
  String get psychological;

  /// No description provided for @romance.
  ///
  /// In en, this message translates to:
  /// **'Romance'**
  String get romance;

  /// No description provided for @sciFi.
  ///
  /// In en, this message translates to:
  /// **'Sci-Fi'**
  String get sciFi;

  /// No description provided for @sports.
  ///
  /// In en, this message translates to:
  /// **'Sports'**
  String get sports;

  /// No description provided for @comedy.
  ///
  /// In en, this message translates to:
  /// **'Comedy'**
  String get comedy;

  /// No description provided for @mystery.
  ///
  /// In en, this message translates to:
  /// **'Mystery'**
  String get mystery;

  /// No description provided for @supernatural.
  ///
  /// In en, this message translates to:
  /// **'Supernatural'**
  String get supernatural;

  /// No description provided for @thriller.
  ///
  /// In en, this message translates to:
  /// **'Thriller'**
  String get thriller;

  /// No description provided for @sliceOfLife.
  ///
  /// In en, this message translates to:
  /// **'Slice Of Life'**
  String get sliceOfLife;

  /// No description provided for @enableLocation.
  ///
  /// In en, this message translates to:
  /// **'Enable location'**
  String get enableLocation;

  /// No description provided for @yourLocationWillBeUsedToShowPotentialMatch.
  ///
  /// In en, this message translates to:
  /// **'Your location will be used to show potential matches near you'**
  String get yourLocationWillBeUsedToShowPotentialMatch;

  /// No description provided for @allowLocation.
  ///
  /// In en, this message translates to:
  /// **'Allow location'**
  String get allowLocation;

  /// No description provided for @locationPermissionsAreDenied.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are denied'**
  String get locationPermissionsAreDenied;

  /// No description provided for @locationPermissionsArePermanentlyDeniedWeCan.
  ///
  /// In en, this message translates to:
  /// **'Location permissions are permanently denied, we cannot request permissions.'**
  String get locationPermissionsArePermanentlyDeniedWeCan;

  /// No description provided for @connectYourSpotify.
  ///
  /// In en, this message translates to:
  /// **'Connect your Spotify'**
  String get connectYourSpotify;

  /// No description provided for @showPotentialMatchesYourFavoriteArtists.
  ///
  /// In en, this message translates to:
  /// **'Show potential matches your favorite artists'**
  String get showPotentialMatchesYourFavoriteArtists;

  /// No description provided for @connectSpotify.
  ///
  /// In en, this message translates to:
  /// **'Connect Spotify'**
  String get connectSpotify;

  /// No description provided for @top5SpotifyArtists.
  ///
  /// In en, this message translates to:
  /// **'Top 5 Spotify Artists'**
  String get top5SpotifyArtists;

  /// No description provided for @top5SpotifyListeningSongs.
  ///
  /// In en, this message translates to:
  /// **'Top 5 Spotify Listening Songs'**
  String get top5SpotifyListeningSongs;

  /// No description provided for @connect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get connect;

  /// No description provided for @topListeningSong.
  ///
  /// In en, this message translates to:
  /// **'Top Listening Song'**
  String get topListeningSong;

  /// No description provided for @topArtists.
  ///
  /// In en, this message translates to:
  /// **'Top Artists'**
  String get topArtists;

  /// No description provided for @shareInFeed.
  ///
  /// In en, this message translates to:
  /// **'Share in feed'**
  String get shareInFeed;

  /// No description provided for @disconnectSpotify.
  ///
  /// In en, this message translates to:
  /// **'Disconnect Spotify'**
  String get disconnectSpotify;

  /// No description provided for @myTop5SpotifyListeningSongs.
  ///
  /// In en, this message translates to:
  /// **'My top 5 Spotify listening songs'**
  String get myTop5SpotifyListeningSongs;

  /// No description provided for @myTop5SpotifyArtists.
  ///
  /// In en, this message translates to:
  /// **'My top 5 Spotify artists'**
  String get myTop5SpotifyArtists;

  /// No description provided for @selectedArtists.
  ///
  /// In en, this message translates to:
  /// **'Selected Artists'**
  String get selectedArtists;

  /// No description provided for @selectedTracks.
  ///
  /// In en, this message translates to:
  /// **'Selected Tracks'**
  String get selectedTracks;

  /// No description provided for @somethingWentWrongPleaseDisconnectSpotifyAnd.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong, please disconnect spotify and try again'**
  String get somethingWentWrongPleaseDisconnectSpotifyAnd;

  /// No description provided for @senpaiPremium.
  ///
  /// In en, this message translates to:
  /// **'Senpai Premium'**
  String get senpaiPremium;

  /// No description provided for @higherVisibilityRates.
  ///
  /// In en, this message translates to:
  /// **'Higher visibility rates'**
  String get higherVisibilityRates;

  /// No description provided for @superLikes30.
  ///
  /// In en, this message translates to:
  /// **'30 Super Likes'**
  String get superLikes30;

  /// No description provided for @abilityToAddUpTo15Animes.
  ///
  /// In en, this message translates to:
  /// **'Ability to add up to 15 animes'**
  String get abilityToAddUpTo15Animes;

  /// No description provided for @upgradeFor$1999.
  ///
  /// In en, this message translates to:
  /// **'Upgrade for \$19.99'**
  String get upgradeFor$1999;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit profile'**
  String get editProfile;

  /// No description provided for @finds.
  ///
  /// In en, this message translates to:
  /// **'Finds'**
  String get finds;

  /// No description provided for @verifyYourPhotos.
  ///
  /// In en, this message translates to:
  /// **'Verify your photos'**
  String get verifyYourPhotos;

  /// No description provided for @restorePurchases.
  ///
  /// In en, this message translates to:
  /// **'Restore purchases'**
  String get restorePurchases;

  /// No description provided for @activeNow2.
  ///
  /// In en, this message translates to:
  /// **'Active now'**
  String get activeNow2;

  /// No description provided for @currentlyNotActive.
  ///
  /// In en, this message translates to:
  /// **'Currently not active'**
  String get currentlyNotActive;

  /// No description provided for @waitingForPhotoVerification.
  ///
  /// In en, this message translates to:
  /// **'Waiting for photo verification'**
  String get waitingForPhotoVerification;

  /// No description provided for @milesAway.
  ///
  /// In en, this message translates to:
  /// **'miles away'**
  String get milesAway;

  /// No description provided for @findACityNearby.
  ///
  /// In en, this message translates to:
  /// **'Find a city nearby'**
  String get findACityNearby;

  /// No description provided for @yourPhotosHaveBeenVerified.
  ///
  /// In en, this message translates to:
  /// **'Your photos have been verified!'**
  String get yourPhotosHaveBeenVerified;

  /// No description provided for @yourPhotosHaveNotBeenVerified.
  ///
  /// In en, this message translates to:
  /// **'Your photos have not been verified :('**
  String get yourPhotosHaveNotBeenVerified;

  /// No description provided for @nowEveryoneWillKnowThatYoureNotPretendingT.
  ///
  /// In en, this message translates to:
  /// **'Now everyone will know that you\'re not pretending to be someone else'**
  String get nowEveryoneWillKnowThatYoureNotPretendingT;

  /// No description provided for @thereSeemsToBeSomethingWrongWithYourPhoto.
  ///
  /// In en, this message translates to:
  /// **'There seems to be something wrong with your photo. Please try to pass the verification again'**
  String get thereSeemsToBeSomethingWrongWithYourPhoto;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get tryAgain;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @biography.
  ///
  /// In en, this message translates to:
  /// **'Biography'**
  String get biography;

  /// No description provided for @birthday.
  ///
  /// In en, this message translates to:
  /// **'Birthday'**
  String get birthday;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @lookingFor.
  ///
  /// In en, this message translates to:
  /// **'Looking for'**
  String get lookingFor;

  /// No description provided for @workAndEducation.
  ///
  /// In en, this message translates to:
  /// **'Work and education'**
  String get workAndEducation;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @favoriteAnime.
  ///
  /// In en, this message translates to:
  /// **'Favorite anime'**
  String get favoriteAnime;

  /// No description provided for @studiedAt.
  ///
  /// In en, this message translates to:
  /// **'Studied at '**
  String get studiedAt;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @preview.
  ///
  /// In en, this message translates to:
  /// **'Preview'**
  String get preview;

  /// No description provided for @hideMyLocation.
  ///
  /// In en, this message translates to:
  /// **'Hide my location'**
  String get hideMyLocation;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @aboutMe.
  ///
  /// In en, this message translates to:
  /// **'About me'**
  String get aboutMe;

  /// No description provided for @workingAs.
  ///
  /// In en, this message translates to:
  /// **'Working as '**
  String get workingAs;

  /// No description provided for @findsFilters.
  ///
  /// In en, this message translates to:
  /// **'Finds filters'**
  String get findsFilters;

  /// No description provided for @clearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear all'**
  String get clearAll;

  /// No description provided for @ageRange.
  ///
  /// In en, this message translates to:
  /// **'Age range'**
  String get ageRange;

  /// No description provided for @distanceMi.
  ///
  /// In en, this message translates to:
  /// **'Distance (mi)'**
  String get distanceMi;

  /// No description provided for @apply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get apply;

  /// No description provided for @wholeCountry.
  ///
  /// In en, this message translates to:
  /// **'Whole country'**
  String get wholeCountry;

  /// No description provided for @photoVerified.
  ///
  /// In en, this message translates to:
  /// **'Photo verified'**
  String get photoVerified;

  /// No description provided for @hasABio.
  ///
  /// In en, this message translates to:
  /// **'Has a bio'**
  String get hasABio;

  /// No description provided for @applyChanges.
  ///
  /// In en, this message translates to:
  /// **'Apply changes'**
  String get applyChanges;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @higherVisibilityRates30SuperLikesAndMuchMo.
  ///
  /// In en, this message translates to:
  /// **'Higher visibility rates, 30 Super Likes and much more!'**
  String get higherVisibilityRates30SuperLikesAndMuchMo;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account settings'**
  String get accountSettings;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get phoneNumber;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @addLanguage.
  ///
  /// In en, this message translates to:
  /// **'Add language'**
  String get addLanguage;

  /// No description provided for @pushNotifications.
  ///
  /// In en, this message translates to:
  /// **'Push notifications'**
  String get pushNotifications;

  /// No description provided for @activityStatus.
  ///
  /// In en, this message translates to:
  /// **'Activity status'**
  String get activityStatus;

  /// No description provided for @showActiveStatus.
  ///
  /// In en, this message translates to:
  /// **'Show “Active” status'**
  String get showActiveStatus;

  /// No description provided for @theActivityStatusIsDisplayedInTheProfileIf.
  ///
  /// In en, this message translates to:
  /// **'The “Activity” status is displayed in the profile if the Senpai app has been used by you in the last 2 hours.'**
  String get theActivityStatusIsDisplayedInTheProfileIf;

  /// No description provided for @showRecentlyActiveStatus.
  ///
  /// In en, this message translates to:
  /// **'Show “Recently active” status'**
  String get showRecentlyActiveStatus;

  /// No description provided for @theRecentlyActivityStatusIsDisplayedInTheP.
  ///
  /// In en, this message translates to:
  /// **'The “Recently activity” status is displayed in the profile if the Senpai app has been used by you in the last 24 hours.'**
  String get theRecentlyActivityStatusIsDisplayedInTheP;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get deleteAccount;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @chooseLanguage.
  ///
  /// In en, this message translates to:
  /// **'Choose language'**
  String get chooseLanguage;

  /// No description provided for @feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedback'**
  String get feedback;

  /// No description provided for @feedbackOnSenpai.
  ///
  /// In en, this message translates to:
  /// **'Feedback on Senpai'**
  String get feedbackOnSenpai;

  /// No description provided for @writeYourFeedbackOnSenpai.
  ///
  /// In en, this message translates to:
  /// **'Write your feedback on Senpai'**
  String get writeYourFeedbackOnSenpai;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @rateSenpai.
  ///
  /// In en, this message translates to:
  /// **'Rate Senpai'**
  String get rateSenpai;

  /// No description provided for @areYouSureYouWantToDeleteYourAccountWell.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? We\'ll keep it for 30 days, if you change your mind.'**
  String get areYouSureYouWantToDeleteYourAccountWell;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @loggingOut.
  ///
  /// In en, this message translates to:
  /// **'Logging out...'**
  String get loggingOut;

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait...'**
  String get pleaseWait;

  /// No description provided for @areYouSureYouWantToDeleteYourAccountIfYo.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete your account? If you’d just like to hide for a while or start over, you can:'**
  String get areYouSureYouWantToDeleteYourAccountIfYo;

  /// No description provided for @hideYourAccountLikeYouDeleteItButYouCanC.
  ///
  /// In en, this message translates to:
  /// **'Hide your account, like you delete it, but you can come back when you like'**
  String get hideYourAccountLikeYouDeleteItButYouCanC;

  /// No description provided for @switchNotificationsOff.
  ///
  /// In en, this message translates to:
  /// **'Switch notifications off'**
  String get switchNotificationsOff;

  /// No description provided for @justLogoutInstead.
  ///
  /// In en, this message translates to:
  /// **'Just logout instead'**
  String get justLogoutInstead;

  /// No description provided for @deleteYourAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete your account'**
  String get deleteYourAccount;

  /// No description provided for @newMatches.
  ///
  /// In en, this message translates to:
  /// **'New matches'**
  String get newMatches;

  /// No description provided for @newMessages.
  ///
  /// In en, this message translates to:
  /// **'New messages'**
  String get newMessages;

  /// No description provided for @superLikes.
  ///
  /// In en, this message translates to:
  /// **'Super Likes'**
  String get superLikes;

  /// No description provided for @appSounds.
  ///
  /// In en, this message translates to:
  /// **'App sounds'**
  String get appSounds;

  /// No description provided for @confirmedPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Confirmed phone number'**
  String get confirmedPhoneNumber;

  /// No description provided for @updateMyPhoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Update my phone number'**
  String get updateMyPhoneNumber;

  /// No description provided for @areYouSureYouWantToLogOut.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to log out?'**
  String get areYouSureYouWantToLogOut;

  /// No description provided for @ifYouAskSenpaiToRememberYouYouWillBeAble.
  ///
  /// In en, this message translates to:
  /// **'If you ask Senpai to remember you, you will be able to log in again on this device with single tap.'**
  String get ifYouAskSenpaiToRememberYouYouWillBeAble;

  /// No description provided for @forgetMeOnThisDevice.
  ///
  /// In en, this message translates to:
  /// **'Forget me on this device'**
  String get forgetMeOnThisDevice;

  /// No description provided for @rememberMeOnThisDevice.
  ///
  /// In en, this message translates to:
  /// **'Remember me on this device'**
  String get rememberMeOnThisDevice;

  /// No description provided for @itsA.
  ///
  /// In en, this message translates to:
  /// **'It’s a'**
  String get itsA;

  /// No description provided for @likeWhatYouSee.
  ///
  /// In en, this message translates to:
  /// **'Like what you see?'**
  String get likeWhatYouSee;

  /// No description provided for @notForYou.
  ///
  /// In en, this message translates to:
  /// **'Not for you?'**
  String get notForYou;

  /// No description provided for @swipeRightIfYouLikeIt.
  ///
  /// In en, this message translates to:
  /// **'Swipe right if you like it'**
  String get swipeRightIfYouLikeIt;

  /// No description provided for @swipeLeftIfNot.
  ///
  /// In en, this message translates to:
  /// **'Swipe left if not'**
  String get swipeLeftIfNot;

  /// No description provided for @youAnd.
  ///
  /// In en, this message translates to:
  /// **'You and'**
  String get youAnd;

  /// No description provided for @haveLikedEachOther.
  ///
  /// In en, this message translates to:
  /// **'have liked each other'**
  String get haveLikedEachOther;

  /// No description provided for @saySomethingNice.
  ///
  /// In en, this message translates to:
  /// **'Say something nice'**
  String get saySomethingNice;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get success;

  /// No description provided for @messageTo.
  ///
  /// In en, this message translates to:
  /// **'Message to '**
  String get messageTo;

  /// No description provided for @sent.
  ///
  /// In en, this message translates to:
  /// **'sent'**
  String get sent;

  /// No description provided for @connectionIsLostPleaseCheckYourInternetConn.
  ///
  /// In en, this message translates to:
  /// **'Connection is lost. Please check your internet connection.'**
  String get connectionIsLostPleaseCheckYourInternetConn;

  /// No description provided for @cannotEstablishAConnectionPleaseCheckYourIn.
  ///
  /// In en, this message translates to:
  /// **'Cannot establish a connection. Please check your internet connection.'**
  String get cannotEstablishAConnectionPleaseCheckYourIn;

  /// No description provided for @userIsNotAuthorizedPleaseSignInAgain.
  ///
  /// In en, this message translates to:
  /// **'User is not authorized. Please sign in again'**
  String get userIsNotAuthorizedPleaseSignInAgain;

  /// No description provided for @outOfSuperLikes.
  ///
  /// In en, this message translates to:
  /// **'Out of Super Likes!'**
  String get outOfSuperLikes;

  /// No description provided for @dontLoseDiamondsRefillNow.
  ///
  /// In en, this message translates to:
  /// **'Don\'t lose diamonds, Refill now!'**
  String get dontLoseDiamondsRefillNow;

  /// No description provided for @buySuperLikesFor.
  ///
  /// In en, this message translates to:
  /// **'Buy Super Likes for'**
  String get buySuperLikesFor;

  /// No description provided for @noThanks.
  ///
  /// In en, this message translates to:
  /// **'No, Thanks'**
  String get noThanks;

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

  /// No description provided for @nextPayment.
  ///
  /// In en, this message translates to:
  /// **'Next payment:'**
  String get nextPayment;

  /// No description provided for @whatYouGet.
  ///
  /// In en, this message translates to:
  /// **'What you get:'**
  String get whatYouGet;

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
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ja': return AppLocalizationsJa();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
