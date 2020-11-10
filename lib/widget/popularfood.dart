import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foods_app/pages/fooddetails.dart';
import 'package:foods_app/utilites/recipemodel.dart';

class popularfood extends StatelessWidget {
  final RecipeModel food;
  const popularfood({
    Key key,this.food
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 205,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(
                builder:  (context) => FoodDetails(food),
            ));
          },
          child: Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: NetworkImage(
                            food.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(food.title, style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),),
                            SizedBox(height: 10,),
                            Row(

                              children: [Text('4.2'),
                                SizedBox(width: 10,),
                                Row(children: [
                                  Icon(
                                      Icons.star, size: 19, color: Colors.indigo),
                                  Icon(
                                      Icons.star, size: 19, color: Colors.indigo),
                                  Icon(
                                      Icons.star, size: 19, color: Colors.indigo),
                                  Icon(Icons.star, size: 19, color: Colors.grey),
                                ],),


                              ],)
                          ],
                        ),
                        Text('\$'+food.price, style: TextStyle( fontSize: 17,
                            fontWeight: FontWeight.bold, color: Colors.red),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}