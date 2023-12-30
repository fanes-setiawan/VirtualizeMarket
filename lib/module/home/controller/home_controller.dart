import 'package:flutter/material.dart';
import 'package:virtualizemarket/core.dart';
import '../view/home_view.dart';

class HomeController extends State<HomeView> {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  List<String> categoriList = [
    'All',
    'Meja',
    'Bangku',
    'Cermi',
    'Elektonik',
    'Food'
  ];
}
