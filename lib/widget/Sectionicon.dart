import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_app/pages/foodcategory.dart';
import 'package:foods_app/utilites/offersale.dart';
import 'package:foods_app/utilites/topoffers.dart';

class Sectionicon extends StatelessWidget {
  final TopOffer sales;



  const Sectionicon({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.sales,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(
            builder: (context)=> FoodCategory(title: title)
          ));
        },
        child: Column(
          children: [
            Container(
              height: 69,
              width: 69,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Icon(icon, size: 25, color: Colors.indigo,),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(title),
            )
          ],

        ),
      ),
    );
  }
}