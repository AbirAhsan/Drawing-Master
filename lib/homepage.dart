import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/picimage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(
        child: Column(
          children: [
            Provider.of<ImagePicker>(context).image == null
                ? Text("Please Select a Image")
                : Container(
                    child: Text("Hello 2"),
                  ),
            IconButton(
                icon: Icon(Icons.camera),
                onPressed: () {
                  Provider.of<ImagePicker>(context).getImage();
                })
          ],
        ),
      ),
    );
  }
}
