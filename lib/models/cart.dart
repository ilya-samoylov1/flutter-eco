import 'package:flutter/foundation.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Force',
      price: '60',
      description: 'The famous shoe on  the world',
      imagePath: 'lib/images/force.png',
    ),
    Shoe(
      name: 'New Balance 530',
      price: '75',
      description: 'Style,color,sport 3-in-1',
      imagePath: 'lib/images/nb550.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '65',
      description: 'The famous shoe on  the Russia',
      imagePath: 'lib/images/nb.png',
    ),
  ];
  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUseCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }


  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
