//TODO: LikeType fron BE
//standard
//super
//rejection

const _standardLike = 'standard';
const _superlike = 'super';
const _rejection = 'rejection';

enum LikeType {
  standard,
  //change it on just super
  superLike,
  rejection;

  static LikeType likeTypeFromServer(String type) {
    if (type == _standardLike) {
      return LikeType.standard;
    } else if (type == _superlike) {
      return LikeType.superLike;
    } else {
      return LikeType.rejection;
    }
  }
}

extension LikeTypeX on LikeType {
  String get likeTypeString =>
      const {
        LikeType.standard: _standardLike,
        LikeType.superLike: _superlike,
        LikeType.rejection: _rejection,
      }[this] ??
      '';
}

enum Swipe { none, right, left, up }
