import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tea_shop/components/tea_tile.dart';
import 'package:tea_shop/models/tea.dart';
import 'package:tea_shop/models/tea_shop.dart';
import 'package:toastification/toastification.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addToCard(Tea tea) {
    Provider.of<TeaShop>(context, listen: false).addItemToCard(tea);

    toastification.show(
      context: context, // optional if you use ToastificationWrapper
      title: const Text('Added to cart!'),
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
                "How would you like your tea?",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: value.teaShop.length,
                itemBuilder: (context, index) {
                  Tea eachTea = value.teaShop[index];

                  return TeaTile(
                    tea: eachTea,
                    icon: const Icon(Icons.add),
                    onPressed: () => addToCard(eachTea),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}
