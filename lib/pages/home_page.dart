import 'package:flutter/material.dart';

import '../components/bottom.dart';
import 'cart_page.dart';
import 'shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {
        _selectedIndex = index;
      });
    }
    final List<Widget>  _pages=[
      const ShopPage(),
      CartPage(),
    ];
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,

      bottomNavigationBar: MyBottom(
        onTabChange: (index)=>navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
            builder: (context)=>IconButton(
              icon: const Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child:  Column(
          children: [
            DrawerHeader(

              child: ClipRRect(
                borderRadius: BorderRadius.circular(13.0),
                child: Image.asset('lib/images/logo.png'),
              ),




            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text("Home",style: TextStyle(color: Colors.white),),

              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListTile(
                leading: Icon(Icons.home,color: Colors.white,),
                title: Text("Home",style: TextStyle(color: Colors.white),),

              ),
            )
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

