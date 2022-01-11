import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Order",
          style: TextStyle(color: Colors.black, fontSize: size.width * 0.065),
        ),
        bottom:
            TabBar(controller: _tabController, labelColor: Colors.black, tabs: [
          Text(
            "Active order",
            style: TextStyle(fontSize: size.width * 0.053),
          ),
          Text(
            "Purchase history",
            style: TextStyle(fontSize: size.width * 0.053),
          )
        ]),
      ),
      backgroundColor: const Color.fromRGBO(241, 243, 244, 10),
      body: Center(
        child: Container(
          height: size.height * 0.35,
          width: size.width * 0.55,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  "List empty",
                  style: TextStyle(fontSize: size.width * 0.06),
                ),
                Text(
                  "You have active orders",
                  style: TextStyle(fontSize: size.width * 0.04),
                ),
                Padding(
                  padding: EdgeInsets.all(size.width * 0.05),
                  child: Container(
                    height: size.width * 0.4,
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/empty.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                )
              ],
            ),
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}
