import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tea_shop/components/tea_tile.dart';
import 'package:tea_shop/models/tea.dart';
import 'package:tea_shop/models/tea_shop.dart';
import 'package:toastification/toastification.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void deleteFromCart(Tea tea) {
    Provider.of<TeaShop>(context, listen: false).removeItemFromCard(tea);
    
    toastification.show(
      context: context, // optional if you use ToastificationWrapper
      title: const Text('Removed from cart!'),
      type: ToastificationType.success,
      style: ToastificationStyle.minimal,
      autoCloseDuration: const Duration(seconds: 3),
      alignment: Alignment.bottomCenter,
      showProgressBar: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TeaShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Text(
                "Your Cart",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: value.userCart.length,
                itemBuilder: (context, index) {
                  Tea eachTea = value.userCart[index];

                  return TeaTile(
                      tea: eachTea,
                      onPressed: () => deleteFromCart(eachTea),
                      icon: const Icon(Icons.delete));
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
