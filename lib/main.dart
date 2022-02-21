import 'package:flutter/material.dart';
import 'package:package/package.dart';

void main() => runApp(const MaterialApp (
    debugShowCheckedModeBanner: false,
    home: packageDemo()));

class packageDemo extends StatelessWidget {
  const packageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
      onPressed: () async {
        await CustomAlertBox.showCustomAlertBox(
            context: context,
            willDisplayWidget: Container(
              child: Text('My custom alert box, used from example!!'),
            ));
      },
      tooltip: 'Show Custom Alert Box',
      child: Icon(Icons.message),
    ));
  }
}
