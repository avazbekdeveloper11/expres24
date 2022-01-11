import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 243, 244, 10),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black, fontSize: size.width * 0.06),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height * 0.2,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
                Positioned(
                  top: size.height * 0.02,
                  left: size.width * 0.05,
                  child: Text(
                    "Avazbek",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.06,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.06,
                  left: size.width * 0.05,
                  child: Text(
                    "+998 99 230 51 03",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width * 0.05,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.03,
                  right: size.width * 0.04,
                  child: IconButton(
                    icon: Icon(
                      Icons.menu_open_sharp,
                      size: size.width * 0.1,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/edit");
                    },
                  ),
                ),
                Positioned(
                  top: size.height * 0.14,
                  left: size.width * 0.05,
                  child: Row(
                    children: [
                      Text(
                        "Balans: ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: size.width * 0.05,
                        ),
                      ),
                      Text(
                        "5000\$",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.05),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.notifications,
                          color: Colors.black, size: size.width * 0.08),
                      title: Text(
                        "Notifications",
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    child: ListTile(
                      leading: Icon(Icons.calendar_view_day_rounded,
                          size: size.width * 0.08, color: Colors.black),
                      title: Text(
                        "Payment card",
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.comment,
                          size: size.width * 0.08, color: Colors.black),
                      title: Text(
                        "Feedback",
                        style: TextStyle(
                            fontSize: size.width * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: size.height * 0.03),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.clean_hands_sharp,
                            size: size.width * 0.08, color: Colors.black),
                        title: Text(
                          "Payment card",
                          style: TextStyle(
                              fontSize: size.width * 0.06,
                              fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(size.width * 0.95, size.height * 0.07),
                  primary: Colors.white),
              child: Text(
                "Log out",
                style: TextStyle(
                  fontSize: size.width * 0.06,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
            Padding(
              padding: EdgeInsets.only(top: size.width * 0.05),
              child: Text(
                "2.0.14",
                style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
