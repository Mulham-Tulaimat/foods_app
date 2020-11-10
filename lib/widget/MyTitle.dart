

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({
    Key key,
    @required this.title,
    @required this.fontsize,
  }) : super(key: key);

  final String title;
  final double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: fontsize),);

  }
}