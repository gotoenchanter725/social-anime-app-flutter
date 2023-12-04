class MatchUserData {
  final String id;
  final String imageUrl;
  final String userName;
  final bool isOnline;

  MatchUserData({
    required this.id,
    required this.imageUrl,
    required this.userName,
    this.isOnline = false,
  });
}
