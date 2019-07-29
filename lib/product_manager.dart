import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];
  final myController = TextEditingController();

  //delete existing text when pressed
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }


  @override
  void initState() {
    _products.add(widget.startingProduct);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(children: <Widget>[
      Column(
        children: [
          TextField(
            controller: myController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                setState(() {
                  _products.add(Text(myController.text).data);
                });
                myController.clear();
                print(_products);
              },
              child: Text('add product'),
            ),
          ),
          Products(_products)
        ],
      )
    ]);
  }
}
