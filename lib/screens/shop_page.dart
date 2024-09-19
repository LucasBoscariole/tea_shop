import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text(
              "How would you like your tea?",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 24,
            ),

            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                
              },
            ))
          ],
        ),
      ),
    );
  }
}
