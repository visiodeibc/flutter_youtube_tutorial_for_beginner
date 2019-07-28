import 'package:flutter/material.dart';

// tutorial link: www.youtube.comwatchv=GLSG_Wh_YWc&t=8440s

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = [
    'Food Tester',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add('value');
                  });
                  print(_products);
                },
                child: Text('add product'),
              ),
            ),
            Column(
              children: _products
                  .map((element) => Card(
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/pic1.jpg'),
                            Text(element)
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
