import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_app/pages/Homepage.dart';
import 'package:foods_app/utilites/offersale.dart';
import 'package:foods_app/utilites/topoffers.dart';
import 'package:foods_app/widget/MyTitle.dart';
import 'package:foods_app/widget/topoffers.dart';

class FoodCategory extends StatefulWidget {
  final String title;
  final TopOffer sales;



  const FoodCategory({Key key, this.title, this.sales}) : super(key: key);



  @override
  _FoodCategoryState createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyTitle(title: widget.title + " Best Food",fontsize: 25,),
            Container(
              height:MediaQuery.of(context).size.height * 0.8 ,
              child: ListView.builder(
                itemCount: title.length,
                  itemBuilder: (context,index){
                return Topoffers(sales: sale[index],);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
