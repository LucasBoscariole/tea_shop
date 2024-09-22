// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:tea_shop/models/tea.dart';

class TeaTile extends StatelessWidget {
  final Tea tea;
  void Function()? onPressed;
  final Widget icon;
  TeaTile({super.key, required this.tea, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 6),
      child: ListTile(
        title: Text(tea.name),
        subtitle: Text(tea.price),
        leading: Image.asset(tea.imagePath),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
