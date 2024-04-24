import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ttt/pages/cart_page.dart';
import 'package:ttt/pages/home_page.dart';
import 'package:ttt/pages/shop_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.grey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset('lib/images/logo.png',
                height: 240,
                ),
              ),
              const SizedBox(height: 48),

              const Text(
                  'Replicas of your favorite brands',
                style:TextStyle(fontWeight: FontWeight.bold,
                fontSize: 16)
              ),
              const SizedBox(height: 24),
              const Text(
                  'Brand new sneakers',
                  style:TextStyle(fontWeight: FontWeight.normal,
                      fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48),
              GestureDetector(
                onTap: ()=> Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context)=>const HomePage(),
                    ),
                ),
                child: Container(
                
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(12),),
                
                
                  padding: EdgeInsets.all(25),
                  child: const Center(
                    child: Text(
                      'New shop',
                      style: TextStyle(color:Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                    ),
                  ),
                
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
