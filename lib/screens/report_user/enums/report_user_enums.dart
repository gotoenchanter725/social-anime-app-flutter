import 'package:senpai/l10n/resources.dart';
// ReportUserReason  BE
// [:inappropriate_behavior, :spam, :sexual_abuse, :doxxing]

enum ReportUserReason {
  inappropriateBehavior,
  spam,
  sexualAbuse,
  doxxing;
}

extension ReportUserReasonX on ReportUserReason {
  String get reasonString =>
      {
        ReportUserReason.inappropriateBehavior:
            R.strings.inappropriateBehaviorText,
        ReportUserReason.spam: R.strings.spamText,
        ReportUserReason.sexualAbuse: R.strings.sexualAbuseText,
        ReportUserReason.doxxing: R.strings.sexualAbuseText,
      }[this] ??
      '';
}

extension ReportUserReasonXX on ReportUserReason {
  String get reasonToServer =>
      const {
        ReportUserReason.inappropriateBehavior: 'inappropriate_behavior',
        ReportUserReason.spam: 'spam',
        ReportUserReason.sexualAbuse: 'sexual_abuse',
        ReportUserReason.doxxing: 'doxxing',
      }[this] ??
      '';
}
