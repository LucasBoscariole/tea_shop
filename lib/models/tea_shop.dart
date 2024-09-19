import 'package:tea_shop/models/tea.dart';

class TeaShop {
  // tea for sale
  final List<Tea> _shop = [
    Tea(name: 'Camomila Tea', price: '8.99', imagePath: 'lib/images/tea.png'),
    Tea(name: 'Green Tea', price: '12.99', imagePath: 'lib/images/tea_2.png'),
    Tea(name: 'Oolong Tea', price: '10.99', imagePath: 'lib/images/tea_3.png'),
    Tea(name: 'Black Tea', price: '15.99', imagePath: 'lib/images/tea_4.png'),
  ];

  // user cart
  List<Tea> _userCart = [];

  // tea list
  List<Tea> get teaShop => _shop;

  // get user cart
  List<Tea> get userCart => _userCart;

  // add item to cart
  void addItemToCard(Tea tea) {
    _userCart.add(tea);
  }
  
  // remove item from cart
   void removeItemToCard(Tea tea) {
    _userCart.remove(tea);
  }
}
