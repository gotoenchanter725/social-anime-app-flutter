import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get englishNotTranslated => 'English';

  @override
  String get english => 'English';

  @override
  String get onboarding1SubTitle => 'your waifu';

  @override
  String get onboarding2Title => 'Anime';

  @override
  String get onboarding2SubTitle => 'lovers unite';

  @override
  String get onboarding3Title => 'Start';

  @override
  String get onboarding3SubTitle => 'matching';

  @override
  String get onboardingButtonText => 'Skip';

  @override
  String get entryText =>
      'By tapping \"Create account\" or \"Sign in\", you agree to our Terms. Learn how we process your data in our Privacy Policy and Cookies Policy.';

  @override
  String get entrySpanText1 =>
      'By tapping \"Create account\" or \"Sign in\", you agree to our';

  @override
  String get entryActionText1 => 'Terms';

  @override
  String get entrySpanText2 => ' Learn how we process your data in our';

  @override
  String get entryActionText2 => 'Privacy Policy';

  @override
  String get entrySpanText3 => ' and ';

  @override
  String get entryActionText3 => 'Cookies Policy';

  @override
  String get signUp => 'Create account';

  @override
  String get signIn => 'Sign in';

  @override
  String get signOut => 'Sign Out';

  @override
  String get hello => 'Hello!';

  @override
  String get createUserPrompt => 'Enter your phone';

  @override
  String get continueText => 'Continue';

  @override
  String get invalidPhoneError => 'Invalid phone number. Please try again';

  @override
  String get createUserInstructions =>
      'We will send a text with a verification code.';

  @override
  String get serverError => 'Something went wrong, please try again';

  @override
  String get nullUser =>
      'There\'s no existing account associated with this phone number';

  @override
  String get alreadyHasAccount => 'This user already has an account';

  @override
  String get termsAndConditions =>
      'I agree to receive SMS texts from Senpai at the phone number provided. Reply STOP to opt-out.';

  @override
  String get verifyPhoneHeading => 'Your code is';

  @override
  String get verifyPhoneInstruction => 'We sent the verification code on';

  @override
  String get invalidCodeError => 'Invalid code. Please try again';

  @override
  String get verifyCodeAction => 'Code not received? Resend';

  @override
  String get skipStep => 'Skip this step';

  @override
  String get verifyPhotoHeading => 'Photo verify';

  @override
  String get verifyPhotoDescription =>
      'Photo verify to let everyone know\nyour photos are really you';

  @override
  String get verifyPhotoButtonText => 'Verify by photo';

  @override
  String get matchTabText => 'Match';

  @override
  String get chatTabText => 'Chat';

  @override
  String get profileTabText => 'Profile';

  @override
  String get happyWithPhotoText => 'Happy with\nyour photo?';

  @override
  String get weWillScanYourPhotoText =>
      'We will scan your photo to verify your identity';

  @override
  String get retakeButton => 'Retake';

  @override
  String get agreeAndSubmitButton => 'Agree and submit';

  @override
  String get thanksLotText => 'Thanks a lot!';

  @override
  String get weReceivedYourPhotoText =>
      'We have received your photo and will answer within 1-2 business days';

  @override
  String get startMatchingButton => 'Start matching!';

  @override
  String get welcomeSenpaiTitle => 'Welcome to Senpai!';

  @override
  String get welcomeSenpaiDescription => 'Fill your profile and start matching';

  @override
  String get fillProfileText => 'Fill the profile';

  @override
  String get yourFirstName => 'Your first name';

  @override
  String get yourFirstNameDescription => 'This is how it will appear in Senpai';

  @override
  String get firstNameText => 'First Name';

  @override
  String get nextText => 'Next';

  @override
  String get conversationsDataErrorText =>
      'Failed to get conversations from the server';

  @override
  String get emptyConversationsPromptText => 'Start liking';

  @override
  String get emptyConversationsText =>
      'When you match with other users they will appear here';

  @override
  String get emptyChatTitle => 'You matched with';

  @override
  String get emptyChatPromptText => 'Don\'t wait too long, say hello :)';

  @override
  String get stickerMessageText => '🌄 Sticker';

  @override
  String get animationRecomedationText => '🌄 Animation';

  @override
  String get gifMessageText => '🌄 Gif';

  @override
  String get attachmentMessageText => '🌄 Attachment';

  @override
  String get cancelText => 'Cancel';

  @override
  String get emptySearchConversationsHintText =>
      'Try to search your matches or chats';

  @override
  String get emptyConversationSearchPromptText => 'Oops. No matches found';

  @override
  String get emptyConversationSearchText =>
      'Maybe there is a mistake in search? Please check and try again';

  @override
  String get stickersTabText => 'Stickers';

  @override
  String get gifsTabText => 'GIPHY';

  @override
  String get animeTabText => 'Recommend';

  @override
  String get favouriteAnimeSelectionTitle => 'My favorite animes';

  @override
  String get searchHintText => 'Search chat or match';

  @override
  String get matchesTitle => 'Matches';

  @override
  String get messagesTitle => 'Messages';

  @override
  String get chatInputHint => 'Send message...';

  @override
  String get invalidFirstNameError => 'Invalid first name. Please try again';

  @override
  String get userOnlineText => 'Active now';

  @override
  String get userOfflineText => 'Active recently';

  @override
  String get failedToSendMessageText => 'Failed to send message';

  @override
  String get failedToUpdateMessageText => 'Failed to add reaction to message';

  @override
  String get animeDescriptionHint => 'Add a description';

  @override
  String get emptyChatAnimationsSearchTitle => 'Oops. No animes found';

  @override
  String get emptyChatAnimationsSearchText =>
      'Maybe there is a mistake in search? Please check and try again';

  @override
  String get searchGifPlaceHolderText => 'Search in GIPHY';

  @override
  String get viewProfileText => 'View Profile';

  @override
  String get unmatchText => 'Unmatch';

  @override
  String get reportText => 'Report';

  @override
  String get inappropriateBehaviorText => 'Inappropriate Behavior';

  @override
  String get spamText => 'Spam';

  @override
  String get sexualAbuseText => 'Sexual Abuse';

  @override
  String get areYouSureYouWantToUnmatchUser =>
      'Are you sure you want to unmatch this user?';

  @override
  String get yourBirthdayText => 'Your birthday';

  @override
  String get yourBirthdayDescription => 'Your age will be public';

  @override
  String get okText => 'Ok';

  @override
  String get pleaseSelectDateText => 'Please select a date';

  @override
  String get youAreText => 'You are';

  @override
  String get youAreDescription => 'How do you identify?';

  @override
  String get male => 'Male';

  @override
  String get female => 'Female';

  @override
  String get youLookingForText => 'You looking for';

  @override
  String get youLookingDescription => 'Who should we show for you';

  @override
  String get both => 'Both';

  @override
  String get yourOccupationText => 'Your occupation';

  @override
  String get universityName => 'University name';

  @override
  String get jobTitleName => 'Job title';

  @override
  String get jobTitleNameHelper =>
      'If you don’t have a job or don’t want to fill in this field, just skip it.';

  @override
  String get invalidUniversityNameError =>
      'Invalid university name. Please try again';

  @override
  String get noUniversityFound => 'No university with such a name was found.';

  @override
  String get yourStoryText => 'Your story';

  @override
  String get yourStoryDescription => 'Tell us a little bit about yourself';

  @override
  String get shortInfoAboutYou => 'Short info about you';

  @override
  String get uploadPhotosText => 'Upload photos';

  @override
  String get uploadPhotosDescription => 'Add at least 2 photos to continue';

  @override
  String get uploadPhotoError => 'Add at least 1 photo to continue';

  @override
  String get youCanChangeOrder => 'You can change the order of the photos.';

  @override
  String get justDragPhoto => 'Just drag the photo to a new place.';

  @override
  String get yourPhotoSuccessfullyAdded => 'Your photo successfully added!';

  @override
  String get uploadingPhoto => 'Uploading photo';

  @override
  String get backText => 'Back';

  @override
  String get choosePhotosText => 'Choose photos from';

  @override
  String get uploadText => 'Upload';

  @override
  String get yourPhotosText => 'Your photos';

  @override
  String get openText => 'Open';

  @override
  String get cameraText => 'Camera';

  @override
  String get galleryText => 'Gallery';

  @override
  String get doneText => 'Done';

  @override
  String get recentsText => 'Recents';

  @override
  String get selectedText => 'Selected';

  @override
  String get ofText => 'of';

  @override
  String get noPhotoFoundText => 'Sorry, no photo found';

  @override
  String get cameraError => 'Something went wrong with your camera';

  @override
  String get copyPosePhotoText => 'Copy the pose in the photo above';

  @override
  String get saveText => 'Save';

  @override
  String get searchText => 'Search';

  @override
  String get chosenText => 'Chosen';

  @override
  String get almostDoneText => 'Almost done!';

  @override
  String get nowChooseYourFavoriteAnimesText =>
      'Now choose your favorite animes\nand start matching';

  @override
  String get noAnimesFoundText =>
      'Maybe there is a mistake in search? Please check and try again.';

  @override
  String get selectedAnimeError => 'Sorry, you have already selected 10 anime.';

  @override
  String get searchAnimesHintText => 'Search anime';

  @override
  String get myAnimesText => 'My animes';

  @override
  String get chooseTitle => 'Choose';

  @override
  String get animeError => 'Add at least 1 anime to continue';

  @override
  String get actionGenresTitle => 'Action';

  @override
  String get adventureGenresTitle => 'Adventure';

  @override
  String get dramaGenresTitle => 'Drama';

  @override
  String get ecchiGenresTitle => 'Ecchi';

  @override
  String get musicGenresTitle => 'Music';

  @override
  String get mechaGenresTitle => 'Mecha';

  @override
  String get horrorGenresTitle => 'Horror';

  @override
  String get fantasyGenresTitle => 'Fantasy';

  @override
  String get mahouShoujoGenresTitle => 'Mahou Shoujo';

  @override
  String get psychologicalGenresTitle => 'Psychological';

  @override
  String get romanceGenresTitle => 'Romance';

  @override
  String get sciFiGenresTitle => 'Sci-Fi';

  @override
  String get sportsGenresTitle => 'Sports';

  @override
  String get comedyGenresTitle => 'Comedy';

  @override
  String get mysteryGenresTitle => 'Mystery';

  @override
  String get supernaturalGenresTitle => 'Supernatural';

  @override
  String get thrillerGenresTitle => 'Thriller';

  @override
  String get sliceOfLifeGenresTitle => 'Slice Of Life';

  @override
  String get enableLocationText => 'Enable location';

  @override
  String get enableLocationDescription =>
      'Your location will be used to show \\npotential matches near you';

  @override
  String get allowLocationText => 'Allow location';

  @override
  String get locationPermissionsDenied => 'Location permissions are denied';

  @override
  String get locationPermissionsPermanentlyDenied =>
      'Location permissions are permanently denied, we cannot request permissions.';

  @override
  String get connectYourSpotifyText => 'Connect your Spotify';

  @override
  String get connectYourSpotifyDescription =>
      'Show potential matches your favorite artists';

  @override
  String get connectSpotifyText => 'Connect Spotify';

  @override
  String get topSpotifyArtistsText => 'Top 5 Spotify Artists';

  @override
  String get topSpotifyListeningSongsText => 'Top 5 Spotify Songs';

  @override
  String get connectText => 'Connect';

  @override
  String get topListeningSongText => 'Top Listening Song';

  @override
  String get topArtistsText => 'Top Artists';

  @override
  String get shareInFeedText => 'Share in feed';

  @override
  String get disconnectSpotifyText => 'Disconnect Spotify';

  @override
  String get myTopSpotifyListeningSongsText =>
      'My top 5 Spotify listening songs';

  @override
  String get myTopSpotifyArtistsText => 'My top 5 Spotify artists';

  @override
  String get selectedArtistsText => 'Selected Artists';

  @override
  String get selectedTracksText => 'Selected Tracks';

  @override
  String get spotifyServerError =>
      'Something went wrong, please disconnect spotify and try again';

  @override
  String get senpaiPremiumTitle => 'Senpai Premium';

  @override
  String get premiumHigherText => 'Higher visibility rates';

  @override
  String get premiumSuperLikesText => '30 Super Likes';

  @override
  String get premiumAbilityAnimesText => 'Ability to add up to 15 animes';

  @override
  String get premiumUpgradeText => 'Upgrade for \$19.99/monthly';

  @override
  String get editProfileButton => 'Edit profile';

  @override
  String get profileFindsButton => 'Finds';

  @override
  String get verifyYourPhotosButton => 'Verify your photos';

  @override
  String get restorePurchasesButton => 'Restore purchases';

  @override
  String get activeNowTitle => 'Active now';

  @override
  String get currentlyNotActiveTitle => 'Currently not active';

  @override
  String get waitingForPhotoVerificationTitle =>
      'Waiting for photo verification';

  @override
  String get milesAwayText => 'miles away';

  @override
  String get findCityNearbyTitle => 'Find a city nearby';

  @override
  String get yourPhotosHaveBeenVerifiedTitle =>
      'Your photos have been verified!';

  @override
  String get yourPhotosHaveNotBeenVerifiedTitle =>
      'Your photos have not been verified :(';

  @override
  String get nowEveryoneWillKnowThatYouText =>
      'Now everyone will know that you\'re not pretending to be someone else';

  @override
  String get thereSeemsToBeSomethingWrongYourPhotoText =>
      'There seems to be something wrong with your photo. Please try to pass the verification again';

  @override
  String get closeButton => 'Close';

  @override
  String get tryAgainButton => 'Try again';

  @override
  String get nameTitle => 'Name';

  @override
  String get bioTitle => 'Biography';

  @override
  String get birthdayTitle => 'Birthday';

  @override
  String get genderTitle => 'Gender';

  @override
  String get lookingForTitle => 'Looking for';

  @override
  String get workAndEducationTitle => 'Work and education';

  @override
  String get locationTitle => 'Location';

  @override
  String get studiedAtTitle => 'Studied at ';

  @override
  String get editTitle => 'Edit';

  @override
  String get previewTitle => 'Preview';

  @override
  String get hideLocationTitle => 'Hide my location';

  @override
  String get addTitle => 'Add';

  @override
  String get aboutMeTitle => 'About me';

  @override
  String get workingAsTitle => 'Working as ';

  @override
  String get findsFiltersTitle => 'Finds filters';

  @override
  String get clearAllTitle => 'Clear all';

  @override
  String get ageRangeTitle => 'Age range';

  @override
  String get distanceTitle => 'Distance (mi)';

  @override
  String get applyTitle => 'Apply';

  @override
  String get wholeCountryTitle => 'Whole country';

  @override
  String get photoVerifiedTitle => 'Photo verified';

  @override
  String get hasBioTitle => 'Has a bio';

  @override
  String get applyChangesTitle => 'Apply changes';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get senpaiPremiumDescription =>
      'Higher visibility rates, 30 Super Likes \nand much more!';

  @override
  String get accountSettingsTitle => 'Account settings';

  @override
  String get phoneNumberTitle => 'Phone number';

  @override
  String get languageTitle => 'Language';

  @override
  String get addLanguageTitle => 'Add language';

  @override
  String get pushNotificationsTitle => 'Push notifications';

  @override
  String get activityStatusTitle => 'Activity status';

  @override
  String get showActiveStatusTitle => 'Show “Active” status';

  @override
  String get showActiveStatusDescription =>
      'The “Activity” status is displayed in the profile if the Senpai app has been used by you in the last 2 hours.';

  @override
  String get showRecentlyActivetatusTitle => 'Show “Recently active” status';

  @override
  String get showRecentlyActivetatusDescription =>
      'The “Recently activity” status is displayed in the profile if the Senpai app has been used by you in the last 24 hours.';

  @override
  String get deleteAccountTitle => 'Delete account';

  @override
  String get logoutTitle => 'Logout';

  @override
  String get chooseLanguageTitle => 'Choose language';

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get feedbackOnSenpaiTitle => 'Feedback on Senpai';

  @override
  String get feedbackOnSenpaiHintText => 'Write your feedback on Senpai';

  @override
  String get sendButton => 'Send';

  @override
  String get rateSenpaiTitle => 'Rate Senpai';

  @override
  String get deleteAccountDescriprion =>
      'Are you sure you want to delete your account? We\'ll keep it for 30 days, if you change your mind.';

  @override
  String get noButton => 'No';

  @override
  String get yesButton => 'Yes';

  @override
  String get loggingOutTitle => 'Logging out...';

  @override
  String get pleaseWaitText => 'Please wait...';

  @override
  String get areSureDeleteAccountTitle =>
      'Are you sure you want to delete your account? If you’d just like to hide for a while or start over, you can:';

  @override
  String get hideYourAccountTitle =>
      'Hide your account, like you delete it, but you can come back when you like';

  @override
  String get switchNotificationsOffTitle => 'Switch notifications off';

  @override
  String get justLogoutInsteadTitle => 'Just logout instead';

  @override
  String get deleteYourAccountTitle => 'Delete your account';

  @override
  String get newMatchesTitle => 'New matches';

  @override
  String get newMessagesTitle => 'New messages';

  @override
  String get superlikesTitle => 'Super likes';

  @override
  String get appSoundsTitle => 'App sounds';

  @override
  String get confirmedPhoneDescription => 'Confirmed phone number';

  @override
  String get updateMyPhoneButton => 'Update my phone number';

  @override
  String get areYouSureLogoutTitle => 'Are you sure you want to log out?';

  @override
  String get areYouSureLogoutDescription =>
      'If you ask Senpai to remember you, you will be able to log in again on this device with single tap.';

  @override
  String get forgetMeTitle => 'Forget me on this device';

  @override
  String get rememberMeTitle => 'Remember me on this device';

  @override
  String get itsTitle => 'It’s a';

  @override
  String get likeWhatYouSeeTitle => 'Like what you see?';

  @override
  String get notForYouTitle => 'Not for you?';

  @override
  String get swipeRightDescription => 'Swipe right if you like it';

  @override
  String get swipeLeftDescription => 'Swipe left if not';

  @override
  String get youAndText => 'You and';

  @override
  String get haveLikedEachOtherText => 'have liked each other';

  @override
  String get saySomethingNiceText => 'Say something nice';

  @override
  String get successText => 'Success!';

  @override
  String get messageToText => 'Message to ';

  @override
  String get sentText => 'sent';

  @override
  String get actionCableConnectionError =>
      'Connection is lost. Please check your internet connection.';

  @override
  String get actionCableCannotConnectError =>
      'Cannot establish a connection. Please check your internet connection.';

  @override
  String get actionCableAuthError =>
      'User is not authorized. Please sign in again';

  @override
  String get outOfSuperLikes => 'Out of Super Likes!';

  @override
  String get doNotLoseDiamonds => 'Don\'t lose diamonds, Refill now!';

  @override
  String get superLikes => 'Super Likes';

  @override
  String get dialogBuyButton => 'Buy Super Likes for';

  @override
  String get noThanks => 'No, Thanks';

  @override
  String get japaneseNotTranslated => '日本語';

  @override
  String get japanese => 'Japanese';

  @override
  String get onboarding1Title => 'Find';

  @override
  String get favoriteAnimesTitle => 'Favorite anime';

  @override
  String get miTitle => 'mi';

  @override
  String get noAccountWithThisNumber => 'There is no account with this number';

  @override
  String get dearUserText => 'Dear User';

  @override
  String get dearUserDescription =>
      'We care about your privacy and data security. Your information will not ever be sold to third parties, but used internally to make the app better.';

  @override
  String get whatYouGetText => 'What you get:';

  @override
  String get nextPaymentText => 'Next payment:';

  @override
  String get bearWithUsTitle => 'Welcome to Senpai!';

  @override
  String get bearWithUsDescription =>
      'Please bear with us, as we continue to grow and more profiles are available!';

  @override
  String get unableToConnectToThePaymentsProcessor =>
      'Unable to connect to the payments processor';

  @override
  String get invalidPurchase => 'Invalid Purchase';

  @override
  String get senpaiPremiumIsActivated => 'Senpai Premium is activated!';

  @override
  String get senpaiDatingForAnimeFans => 'Senpai - Dating for Anime Fans\n';

  @override
  String get findYourMatchToday => 'Find your match today.\n';

  @override
  String get openGalleryButtonText => 'Gallery';

  @override
  String get openCameraButtonText => 'Camera';

  @override
  String get maximumAttachmentSizeExceededError =>
      'Maximum attachment size exceeded';

  @override
  String get portugueseNotTranslated => 'Português';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get eventsTitle => 'Events';

  @override
  String get createEventTitle => 'Create Event';

  @override
  String get addPromoImageText => 'Add Promo Image';

  @override
  String get eventNameText => 'Event Name';

  @override
  String get aboutEventText => 'About Event';

  @override
  String get dateText => 'Date';

  @override
  String get canBeRangeText => 'Can be range';

  @override
  String get timeText => 'Time';

  @override
  String get maxPartySizeText => 'Max Party Size';

  @override
  String get availableSlotsText => '1-10 available slots';

  @override
  String get requiresPaymentText => 'Requires Payment?';

  @override
  String get cosplayText => 'Cosplay';

  @override
  String get optionalButton => 'Optional';

  @override
  String get eventAssociatedWithConventionText =>
      'Is the event associated with a Convention?';

  @override
  String get findConventionText => 'Find Convention';

  @override
  String get selectConventionText => 'Select Convention';

  @override
  String get saveChangesButton => 'Save Changes';

  @override
  String get filterTitle => 'Filter';

  @override
  String get searchCountryCityText => 'Search country, city';

  @override
  String get freeTitle => 'FREE';

  @override
  String get paidTitle => 'Paid';

  @override
  String get hostRatingFromText => 'Host Rating from:';

  @override
  String get eventsConventionsTitle => 'Events & Conventions';

  @override
  String get noEventsFoundText => 'Oops, no Events found!';

  @override
  String get noEventsFoundDescription =>
      'Try tweaking your filters or come\nback later for more fun options.';

  @override
  String get openAppSettings => 'Open App Settings';

  @override
  String get cameraErrorCheckPermission =>
      'Something went wrong with your camera, please check permission.';

  @override
  String get editPromoImage => 'Edit Promo Image';

  @override
  String get invalidEventNameError => 'Invalid event name. Please try again';

  @override
  String get invalidDescriptionError => 'Invalid description. Please try again';

  @override
  String get venueText => 'Venue';

  @override
  String get invalidVenueError => 'Invalid venue. Please try again';

  @override
  String get invalidMaxPartySizeError =>
      'Invalid max party size. Please try again';

  @override
  String get normalEvents => 'Normal Events';

  @override
  String get conventionsText => 'Conventions';

  @override
  String get yourEvents => 'Your Events';

  @override
  String get invalidLocationError => 'Invalid location. Please try again';

  @override
  String get eventManagementTitle => 'Event Management';

  @override
  String get paidEntryText => 'Paid Entry';

  @override
  String get associationWithConvention => 'Association with Convention:';

  @override
  String get attendButton => 'Attend';

  @override
  String get hostTheEventText => 'Host of the event';

  @override
  String get maximumPartyMemberLimit => 'Maximum party member limit: 10';

  @override
  String get youCanParticipateInPartyDescription =>
      'You can participate in a party, find new friends and have a good time.';

  @override
  String get associatedEventsTitle => 'Associated Events';

  @override
  String get startDateTitle => 'Start Date';

  @override
  String get endDateTitle => 'End Date';

  @override
  String get creatingEventTitle => 'Creating an event';

  @override
  String get creatingEventDescription =>
      'You must be verified before you can create an event';

  @override
  String get verifyNowButton => 'Verify Now';

  @override
  String get hostAnEventTitle => 'Host an Event';

  @override
  String get hostAnEventDescription =>
      'Whether it\'s a night out for bowling or going out for drinks or assembling your cosplay squad for the convention, host an event today and build your party!';

  @override
  String get inviteFriendsGetPremiumText => 'Invite Friends, Get Premium!';

  @override
  String get keepInvitingPeopleDescription =>
      'Keep inviting people and soon you will get a Premium account․';

  @override
  String get attendSuccessfulDescription =>
      'You have successfully applied to join the party and will be notified when the host makes a decision.';

  @override
  String get attendSuccessTitle => 'Success';

  @override
  String get scanQRCodeTitle => 'Scan QR Code';

  @override
  String get congratulationsTitle => 'Congratulations!';

  @override
  String get youHavePremiumAccountForMonth =>
      'You have a Premium account for 1 month.';

  @override
  String get higherVisibilityRatesSuperLikesAndMuchMore =>
      'Higher visibility rates, 30 Super Likes and much more!';

  @override
  String get backHomeTitle => 'Back Home';

  @override
  String get openInvitesFilterTitle => 'Accepting invites';

  @override
  String get closedInvitesFilterTitle => 'Party filled';

  @override
  String get manageSubscriptionTitle => 'Manage Subscription';

  @override
  String get cancelAnytimeTitle => 'Cancel Anytime';

  @override
  String get conventionWebsiteText => 'Website';

  @override
  String get oopsNoAnimeFound => 'Oops, no anime found!';

  @override
  String get spanishNotTranslated => 'Español';

  @override
  String get spanish => 'Spanish';

  @override
  String get doxxingIdentityThreat => 'Doxxing / Identity threat';

  @override
  String get favoriteAnime => 'Favorite Anime';

  @override
  String get lobbyAppBarTitle => 'Lobby';

  @override
  String get unlimitedVideoCalls => 'Unlimited Video Calls';

  @override
  String get waitingForMatch => 'Waiting for a Match';

  @override
  String get joinPool => 'Join Pool';

  @override
  String get decline => 'Decline';

  @override
  String get acceptPromptText => 'Accept';

  @override
  String get startMatching => 'Start Matching';

  @override
  String get verificationPrompt => 'Verification Required!';

  @override
  String get verificationDescription =>
      'Verify your profile to enable video chat!';

  @override
  String get verificationAmenity =>
      'To ensure a safe and genuine experience, please verify your profile.';

  @override
  String get cameraAmenity =>
      'Use your camera in a well-lit area for the best results';

  @override
  String get startVerification => 'Start Verification';

  @override
  String get premiumAvatars => 'Premium Avatars';

  @override
  String get higherVisibility => 'Higher Visibility';

  @override
  String get avatarShop => 'Avatar Shop';

  @override
  String get avatarSkinShop => 'Avatar Skin Shop';

  @override
  String get usersCurrentlyInLobby => 'Users currently in the Lobby.';

  @override
  String get exitLobby => 'Exit Lobby';

  @override
  String get waitingInTheLobby => 'Waiting in the lobby';

  @override
  String get startMatchingBtn => 'Start Matching';

  @override
  String get findingMatch => 'Finding a Match';

  @override
  String get invitationPrompt => 'has sent you a video chat invitation!';

  @override
  String get unknownUserName => 'Unknown';

  @override
  String get rejectLobbyInvitation => 'Reject';

  @override
  String get inviteChatStatus => 'Invite to Chat';

  @override
  String get pendingInviteStatus => 'Inviting ...';

  @override
  String get doneInviteStatus => 'Invited';

  @override
  String get failedInviteStatus => 'Failed';

  @override
  String get videoChatDialogScreenTitle => 'Video Request';

  @override
  String get backToPool => 'Back to the Pool';

  @override
  String get matchFoundTitle => 'MATCH FOUND';
}
