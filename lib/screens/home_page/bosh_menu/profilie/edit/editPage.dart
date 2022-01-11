import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key? key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(241, 243, 244, 10),
      appBar: AppBar(
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Accaunt",
          style: TextStyle(color: Colors.black, fontSize: size.width * 0.06),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              Container(
                child: ListTile(
                  title: Text(
                    "Phone number",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.05),
                  ),
                  subtitle: Text(
                    "+9989 99 230 51 03",
                    style: TextStyle(
                        color: Colors.black, fontSize: size.width * 0.045),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp),
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: Container(
                  width: size.width,
                  height: size.height * 0.6,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Name",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.045),
                        ),
                        TextFormField(),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Surname"),
                          ),
                        ),
                        Text(
                          "Data of Birth",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: size.width * 0.045),
                        ),
                        TextFormField(),
                        TextFormField(
                          decoration: const InputDecoration(
                            label: Text("Mail"),
                          ),
                        ),
                        const ExpansionTile(
                          tilePadding: EdgeInsets.all(10),
                          title: Text("Floor"),
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                          children: [
                            ListTile(title: Text("Male")),
                            ListTile(
                              title: Text("Famale"),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(size.width, size.height * 0.07),
                    primary: const Color(0xffF7E233)),
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(
                      color: Colors.black, fontSize: size.width * 0.06),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
