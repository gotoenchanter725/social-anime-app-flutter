// ignore: depend_on_referenced_packages
import 'package:in_app_purchase_storekit/store_kit_wrappers.dart';

/// The payment queue delegate can be implementated to provide information
/// needed to complete transactions.
class SenpaiPaymentQueueDelegate implements SKPaymentQueueDelegateWrapper {
  @override
  bool shouldContinueTransaction(
      SKPaymentTransactionWrapper transaction, SKStorefrontWrapper storefront) {
    return true;
  }

  @override
  bool shouldShowPriceConsent() {
    return false;
  }
}
