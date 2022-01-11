import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacementNamed(context, "/home"),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: const Image(
          image: AssetImage("assets/images/express_login.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
