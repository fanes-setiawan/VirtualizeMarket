import 'package:flutter/material.dart';
import 'package:virtualizemarket/module/home/view/detail_product.dart';

class DetailProductController extends State<DetailProductView> {
  static late DetailProductController instance;
  late DetailProductView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
