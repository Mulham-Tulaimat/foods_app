import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_app/utilites/topoffers.dart';

class Topoffers extends StatelessWidget {
  final TopOffer sales;
  const Topoffers({Key key, this.sales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: NetworkImage(sales.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sales.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    sales.description, overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                ],
              ),
            ),

            
          ],
        ),
        Text(
          '\$' + sales.price,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(),
        )
      ]),
    );
  }
}
