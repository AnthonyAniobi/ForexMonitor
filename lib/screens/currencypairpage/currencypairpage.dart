import 'package:flutter/material.dart';
import 'package:forexmonitor/network/app_sockets/appsockets.dart';

class CurrencyPairPage extends StatefulWidget {
  const CurrencyPairPage({Key? key}) : super(key: key);

  @override
  _CurrencyPairPageState createState() => _CurrencyPairPageState();
}

class _CurrencyPairPageState extends State<CurrencyPairPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: AppSockets().streamData(),
          builder: (context, snapshot) {
            if (!snapshot.hasError) {
              return Text(snapshot.data.toString());
            }
            return Text('Error');
          }),
    );
  }
}
