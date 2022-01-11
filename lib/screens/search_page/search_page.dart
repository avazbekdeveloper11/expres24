import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: size.height * 0.11,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_outlined),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(
                    width: size.width * 0.73,
                    child: TextFormField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(fontSize: size.width * 0.05),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        _textEditingController.clear();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                  onPressed: () {
                    _textEditingController.text = "KFK";
                    setState(() {});
                  },
                  child: const Text(
                    "KFC",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                onPressed: () {
                  _textEditingController.text = "Evos";
                  setState(() {});
                },
                child: const Text(
                  "Evos",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                  onPressed: () {
                    _textEditingController.text = "Lavash";
                    setState(() {});
                  },
                  child: const Text(
                    "Lavash",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                onPressed: () {
                  _textEditingController.text = "Bon";
                  setState(() {});
                },
                child: const Text(
                  "Bon",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                  onPressed: () {
                    _textEditingController.text = "Grand";
                    setState(() {});
                  },
                  child: const Text(
                    "Grand",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                onPressed: () {
                  _textEditingController.text = "BBQ";
                  setState(() {});
                },
                child: const Text(
                  "BBQ",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                  onPressed: () {
                    _textEditingController.text = "Pilov";
                    setState(() {});
                  },
                  child: const Text(
                    "Pilov",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                onPressed: () {
                  _textEditingController.text = "Osh";
                  setState(() {});
                },
                child: const Text(
                  "Osh",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                  onPressed: () {
                    _textEditingController.text = "Pizza";
                    setState(() {});
                  },
                  child: const Text(
                    "Pizza",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                onPressed: () {
                  _textEditingController.text = "Burger";
                  setState(() {});
                },
                child: const Text(
                  "Burger",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                  onPressed: () {
                    _textEditingController.text = "Pizza";
                    setState(() {});
                  },
                  child: const Text(
                    "Pizza",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    fixedSize: Size(size.width * 0.3, size.height * 0.01)),
                onPressed: () {
                  _textEditingController.text = "Burger";
                  setState(() {});
                },
                child: const Text(
                  "Burger",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
