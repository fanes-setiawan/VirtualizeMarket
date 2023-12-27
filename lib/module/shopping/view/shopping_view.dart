
import 'package:flutter/material.dart';
import 'package:virtualizemarket/core.dart';
import '../controller/shopping_controller.dart';

class ShoppingView extends StatefulWidget {
  const ShoppingView({Key? key}) : super(key: key);

  Widget build(context, ShoppingController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children: const [],
            ),
        ),
      ),
    );
  }

  @override
  State<ShoppingView> createState() => ShoppingController();
}
    