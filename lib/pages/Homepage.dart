import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:foods_app/utilites/apidata.dart';
import 'package:foods_app/utilites/offersale.dart';
import 'package:foods_app/utilites/recipemodel.dart';
import 'package:foods_app/widget/MyTitle.dart';
import 'package:foods_app/widget/Sectionicon.dart';
import 'package:foods_app/widget/popularfood.dart';
import 'package:foods_app/widget/topoffers.dart';

import '../widget/SearchBar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}
List icon= [Icons.favorite,Icons.fastfood,Icons.favorite_border,Icons.thumb_down,Icons.send,];
List title= ["Asian","Syrian","American","Egyption","Europe"];


class _HomepageState extends State<Homepage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
     body:  SafeArea(
       child: Padding(
         padding: const EdgeInsets.all(10.0),
         child: SingleChildScrollView(
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start ,
             children: [
               MyTitle(title: 'Explore', fontsize: 30),
               SizedBox(height: 10),
               Searchbar(),
               SizedBox(height: 9),
               Container(
                 height: 100,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount: title.length,
                     itemBuilder:(context,index){
                     return Sectionicon(icon: icon[index], title: title[index]);

                     }),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: MyTitle(title: "Popular Food ",fontsize: 25,),
               ),
               Container(
                 height: 210,

                 child: ListView.builder(
                   itemCount: foods.length,
                     scrollDirection: Axis.horizontal,
                     itemBuilder:(context,index){
                     return popularfood(food: foods[index],);
                     }
                 ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: MyTitle(title: "Top Offers ",fontsize: 25,),
               ),
               Container(
                 height: 300,
                 child: ListView.builder(
                     itemCount:sale.length,
                   scrollDirection: Axis.vertical,

                     itemBuilder: (context,index){
                   return Topoffers(sales: sale[index],);
                 }),

               ),




             ],
           ),
         ),
       ),
     ),
    );
  }

}












