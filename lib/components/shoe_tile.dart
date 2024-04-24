import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ttt/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;

  void Function()? onTap;
  ShoeTile({super.key,required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              child: Image.asset(shoe.imagePath)
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              shoe.description,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shoe.name,
                      style:const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ) ,
                    ),

                    Text(
                      '\$' + shoe.price,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.grey
                    ),),
                  ],
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(12),bottomRight: Radius.circular(12))
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),


                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
