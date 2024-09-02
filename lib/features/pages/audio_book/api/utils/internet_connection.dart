import 'dart:developer';
import 'dart:io';

class Connection {
  static Future<bool> isConnected() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        return true;
      }
    } on SocketException catch (_) {
      log("Internet not Connected !!!!");
      return false;
    }
    log('last statement of connection');
    return true;
  }
}
