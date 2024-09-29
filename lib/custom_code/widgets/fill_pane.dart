// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:floodfill_image/floodfill_image.dart';

class FillPane extends StatefulWidget {
  const FillPane({
    super.key,
    this.width,
    this.height,
    required this.image,
  });

  final double? width;
  final double? height;
  final String image;

  @override
  State<FillPane> createState() => _FillPaneState();
}

class _FillPaneState extends State<FillPane> {
  Color _fillColor = Colors.amber;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FloodFillImage(
            imageProvider: AssetImage(widget.image),
            fillColor: _fillColor,
            avoidColor: [Colors.transparent, Colors.black],
            tolerance: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {
                  setState(() {
                    _fillColor = Colors.brown;
                  });
                },
                child: Text(
                  "Brown",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.brown)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _fillColor = Colors.amber;
                  });
                },
                child: Text(
                  "Amber",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber)),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _fillColor = Colors.cyan;
                  });
                },
                child: Text(
                  "Cyan",
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.cyan)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
