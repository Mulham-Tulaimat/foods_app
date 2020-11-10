import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius:BorderRadius.circular(25),
          border: Border.all(color: Colors.grey),
        ) ,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration:InputDecoration(
              hintText:'Find Food or Restaurant',
              suffixIcon: Icon(Icons.add_circle_outline,color: Colors.grey),
              prefixIcon: Icon(Icons.search,color: Colors.grey),
              disabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ) ,
          ),
        ),
      ),
    );
  }
}