//TODO: LikeType fron BE
//standard
//super
//rejection

const _standardLike = 'standard';
const _superlike = 'super';

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

enum Swipe { none, right, left, up }
