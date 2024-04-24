import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ttt/models/shoe.dart';
import 'package:ttt/models/cart.dart';

class CartItem extends StatefulWidget {


  Shoe shoe;

  CartItem({
    super.key,
    required this.shoe
  });


  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),

      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text('\$' + widget.shoe.price),
        trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: removeItemFromCart,
        ),
      ),
    );
  }
}
