import 'dart:io';

import 'package:flutter/material.dart';

class idk extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _idk();
  }
}

class _idk extends State<idk> {
  @override
  Widget build(BuildContext context) {
    bool v = true;
    // TODO: implement build
    return new Material(
      child: new Container(
        child: new RawMaterialButton(
          onPressed: (){simpleShowDialog(context);},
        ),
      ),
    );
  }

  Future simpleShowDialog(BuildContext context) async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return new SimpleDialog(
            title: new Text("options"),
            children: [
              new SimpleDialogOption(
                child: new Text("no"),
                onPressed: () {
                  print("yes");
                },
              ),
              new SimpleDialogOption(
                child: new Text("yes"),
                onPressed: () {
                  print("no");
                },
              )
            ],
          );
        })) {
    }
  }
}
