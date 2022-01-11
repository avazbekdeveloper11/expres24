import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: Column(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: const FadeInImage(
                    placeholder: AssetImage('assets/images/loading.gif'),
                    image: AssetImage("assets/images/maps.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height * 0.03,
                      left: size.height * 0.02,
                      right: size.height * 0.02),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shipping Address",
                        style: TextStyle(fontSize: size.height * 0.03),
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "current address",
                              style: TextStyle(
                                fontSize: size.width * 0.055,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: size.width * 0.25,
                            height: size.height * 0.1,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Entrance"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.25,
                            height: size.height * 0.1,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Floor"),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.25,
                            height: size.height * 0.1,
                            child: TextFormField(
                              decoration: const InputDecoration(
                                label: Text("Apartment"),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.1,
                        child: TextFormField(
                          decoration: InputDecoration(
                            label: Text(
                              "Reference point",
                              style: TextStyle(
                                fontSize: size.width * 0.055,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(size.width, size.height * 0.07),
                            primary: const Color(0xffF7E233)),
                        child: const Text(
                          "Confirm",
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, "/home");
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
