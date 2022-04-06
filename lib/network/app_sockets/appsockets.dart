import 'package:web_socket_channel/web_socket_channel.dart';

class AppSockets {
  static const String webSocketUrl = 'wss://echo.websocket.events';
  static final channel = WebSocketChannel.connect(Uri.parse(webSocketUrl));

  Stream streamData() {
    return channel.stream;
  }

  Future<void> sendData(String message) async {
    channel.sink.add(message);
  }
}
