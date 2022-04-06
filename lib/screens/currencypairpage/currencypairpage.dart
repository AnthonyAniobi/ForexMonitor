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
              final _processedData = _parseData(snapshot.data);
              return Text(_processedData.toString());
            }
            return Text('Error');
          }),
    );
  }

  // work on the data from the snapshot
  List<double> _parseData(data) {
    return [];
  }
}
