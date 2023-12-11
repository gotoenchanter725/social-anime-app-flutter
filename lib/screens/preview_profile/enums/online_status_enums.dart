//TODO: online status fron BE
//offline
//online
const _onlineStatusFromServer = 'online';

enum OnlineStatus {
  offline,
  online;

  static OnlineStatus onlineStatusFromServer(String? status) =>
      status == _onlineStatusFromServer
          ? OnlineStatus.online
          : OnlineStatus.offline;
}
