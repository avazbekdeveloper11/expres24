import 'dart:math';
import 'package:express24/model/data.dart';
import 'package:express24/screens/home_page/bosh_menu/profilie/profile.dart';
import 'package:flutter/material.dart';

import 'bosh_menu/bosh_menu.dart';
import 'bosh_menu/orderPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  BoshMenu? _boshMenu;
  OrderPage? _order;
  ProfilePage? _profile;
  final List _pages = [];

  @override
  void initState() {
    super.initState();
    _boshMenu = const BoshMenu();
    _order = const OrderPage();
    _profile = const ProfilePage();
    _pages.addAll([_boshMenu, _order, _profile]);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(231, 233, 235, 1),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (v) {
          setState(() {
            _currentIndex = v;
          });
        },
        iconSize: size.width * 0.08,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), label: "Order"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
