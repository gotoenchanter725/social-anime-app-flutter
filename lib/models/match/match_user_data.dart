class MatchUserData {
  final String imageUrl;
  final String userName;
  final bool isOnline;

  MatchUserData({
    required this.imageUrl,
    required this.userName,
    this.isOnline = false,
  });
}
