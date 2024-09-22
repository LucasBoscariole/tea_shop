import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tea_shop/models/tea_shop.dart';
import 'package:tea_shop/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TeaShop(),
      builder: (context, child) => const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
