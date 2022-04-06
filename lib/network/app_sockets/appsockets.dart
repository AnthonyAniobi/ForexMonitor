import 'package:web_socket_channel/web_socket_channel.dart';

class AppSockets {
  static const String webSocketUrl = 'wss://echo.websocket.events';
  final channel = WebSocketChannel.connect(Uri.parse(webSocketUrl));

  Stream _streamData() {
    return channel.stream;
  }

  Future<void> _sendData(String message) async {
    channel.sink.add(message);
  }
}
