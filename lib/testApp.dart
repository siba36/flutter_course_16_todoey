import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  String data = 'secret code';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
        create: (_) => Data(),
        builder: (context, child) {
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                title: Text(Provider.of<Data>(context).data),
              ),
              body: Level1(),
            ),
          );
        });
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Level2();
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Consumer<Data>(
          builder: (context, dataObject, child) {
            return TextField(
              onChanged: (value) {
                dataObject.changeData(value);
              },
            );
          },
        ),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(Provider.of<Data>(context).data);
  }
}

class Data with ChangeNotifier {
  String data = 'some data';

  void changeData(String newData) {
    data = newData;
    notifyListeners();
  }
}
