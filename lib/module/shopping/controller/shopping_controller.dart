
import 'package:flutter/material.dart';
import 'package:virtualizemarket/core.dart';
import '../view/shopping_view.dart';

class ShoppingController extends State<ShoppingView> {
    static late ShoppingController instance;
    late ShoppingView view;

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
        
    