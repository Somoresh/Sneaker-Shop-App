import 'package:adidas/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: "Aggresive FREAK",
        price: '36.99',
        description:
            'The forward-thinking design of his latest signature shoe . ',
        imagePath: 'lib/images/aggresive.png'),
    Shoe(
        name: "Freestyle FREAK",
        price: '25.99',
        description:
            'The forward-thinking design of his latest signature shoe . ',
        imagePath: 'lib/images/freestyle.png'),
    Shoe(
        name: "Jersey",
        price: '10.99',
        description:
            'The forward-thinking design of his latest signature shoe . ',
        imagePath: 'lib/images/jersey.png'),
    Shoe(
        name: "Color Freak",
        price: '15.99',
        description:
            'The forward-thinking design of his latest signature shoe . ',
        imagePath: 'lib/images/color.png'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
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
