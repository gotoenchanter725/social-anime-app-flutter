import 'package:senpai/data/text_constants.dart';
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
      const {
        ReportUserReason.inappropriateBehavior:
            TextConstants.inappropriateBehaviorText,
        ReportUserReason.spam: TextConstants.spamText,
        ReportUserReason.sexualAbuse: TextConstants.sexualAbuseText,
        ReportUserReason.doxxing: TextConstants.doxxingText,
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
