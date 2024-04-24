import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ttt/models/cart.dart';
import 'package:ttt/models/shoe.dart';

import '../components/cart_item.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Text(
              'My Cart',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Expanded(

              child: ListView.builder(
                itemCount: value.getUseCart().length,
                itemBuilder: (context, index) {
                  Shoe individualsShoe = value.getUseCart()[index];
                  return CartItem(
                    shoe: individualsShoe,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
