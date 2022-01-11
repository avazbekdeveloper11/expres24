import 'dart:math';

import 'package:express24/model/data.dart';
import 'package:flutter/material.dart';

class BoshMenu extends StatefulWidget {
  const BoshMenu({Key? key}) : super(key: key);
  @override
  _BoshMenuState createState() => _BoshMenuState();
}

class _BoshMenuState extends State<BoshMenu> {
  final List _model =
      List.generate(homePage.length, (index) => Model(like: false));
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0, primary: Colors.transparent),
                child: Text(
                  "Chilonzor district, 1, Chilonzor",
                  style: TextStyle(
                      fontSize: size.width * 0.05, color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/location');
                },
              ),
              const Icon(Icons.arrow_drop_down_sharp, color: Colors.black),
            ],
          ),
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: InkWell(
                child: Container(
                  height: size.height * 0.04,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xffF0F0F0),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey.shade800,
                          size: size.width * 0.04,
                        ),
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                            color: Colors.grey.shade800,
                            fontSize: size.width * 0.03),
                      )
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, '/search');
                },
              ),
            ),
          ),
          expandedHeight: size.height * 0.15,
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (_, __) {
              if (__ == 0) {
                return SizedBox(
                  height: size.height * 0.15,
                  width: 29,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          height: size.height * 0.12,
                          width: size.width * 0.4,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/skidka.jpg"),
                                  fit: BoxFit.cover),
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          height: size.height * 0.12,
                          width: size.width * 0.4,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/vkusnie.jpg"),
                                  fit: BoxFit.cover),
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          height: size.height * 0.12,
                          width: size.width * 0.4,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/sesonnaya.jpg"),
                                  fit: BoxFit.cover),
                              color: Colors.transparent,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 12),
                          height: size.height * 0.12,
                          width: size.width * 0.4,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/cola.jpg"),
                                fit: BoxFit.cover),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              } else if (__ == 1) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Row(
                    children: [
                      Text(
                        "Shop",
                        style: TextStyle(fontSize: size.width * 0.05),
                      ),
                      const Spacer(),
                      InkWell(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                "All",
                                style: TextStyle(fontSize: size.width * 0.05),
                              ),
                              const Icon(Icons.arrow_forward_ios)
                            ],
                          ),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                );
              } else if (__ == 2) {
                return SizedBox(
                  height: size.height * 0.18,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, __) {
                      return Container(
                        margin: const EdgeInsets.only(left: 12),
                        height: size.height * 0.18,
                        width: size.width * 0.4,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${ikkinchiList[__]["image"]}"),
                                      fit: BoxFit.cover),
                                  borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(10),
                                    topLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: size.width * 0.4,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: size.width * 0.02,
                                      top: size.height * 0.01),
                                  child: Text(
                                    '${ikkinchiList[__]["name"]}',
                                    style:
                                        TextStyle(fontSize: size.width * 0.05),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      );
                    },
                    itemCount: ikkinchiList.length,
                  ),
                );
              } else if (__ == 3) {
                return SizedBox(
                  height: size.height * 0.1,
                  width: size.width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: size.height * 0.02,
                        horizontal: size.width * 0.03),
                    child: Text(
                      "Restoran",
                      style: TextStyle(
                          fontSize: size.width * 0.1,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                );
              } else if (__ == 3) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: SizedBox(
                    height: size.height * 0.06,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, __) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              fixedSize:
                                  Size(size.width * 0.3, size.height * 0.05),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Image",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * 0.04),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              } else if (__ == 4) {
                return SizedBox(
                  height: size.height * 0.08,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, __) {
                      return Padding(
                        padding:
                            const EdgeInsets.only(left: 10, top: 6, bottom: 6),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              fixedSize:
                                  Size(size.width * 0.5, size.height * 0.08),
                            ),
                            onPressed: () {},
                            child: Text(
                              "${button[__]}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: size.width * 0.05),
                            )),
                      );
                    },
                    itemCount: button.length,
                  ),
                );
              } else {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.transparent,
                        height: size.height * 0.4,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Expanded(
                              flex: 5,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image:
                                        NetworkImage(homePage[__ - 5]['image']),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: size.height * 0.1,
                      left: size.width * 0.05,
                      child: Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.45,
                            child: Text(
                              "${homePage[__ - 5]['name']}",
                              style: TextStyle(
                                  fontSize: size.width * 0.06,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width * 0.35),
                            child: IconButton(
                              icon: Icon(
                                _model[__ - 5].like
                                    ? Icons.favorite
                                    : Icons.favorite_border,
                                size: size.width * 0.08,
                                color: _model[__ - 5].like
                                    ? Colors.redAccent
                                    : Colors.black,
                              ),
                              onPressed: () {
                                setState(() {
                                  _model[__ - 5].like = true;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: size.width * 0.06,
                      bottom: size.height * 0.18,
                      child: Container(
                        height: size.width * 0.12,
                        width: size.width * 0.12,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(homePage[__ - 5]['logo']),
                                fit: BoxFit.cover),
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10))),
                      ),
                    ),
                    Positioned(
                      bottom: size.height * 0.05,
                      left: size.width * 0.05,
                      child: SizedBox(
                        width: size.width * 0.38,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: size.width * 0.08,
                            ),
                            Text(
                              Random().nextInt(5000).toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.local_taxi_outlined,
                              size: size.width * 0.08,
                            ),
                            Text(
                              Random().nextInt(5000).toString(),
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }
            },
            childCount: homePage.length + 5,
          ),
        ),
      ],
    );
  }
}
