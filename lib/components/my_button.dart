import 'package:fchat/login_page.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? chalo;
  final String text;
  const MyButton({
    super.key,
    required this.chalo,
    this.text = "Sign In",
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: chalo,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        child: Center(
          child: Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
      ),
    );
  }
}

class MyButton2 extends StatelessWidget {
  // final void Function()? chalo;
  final String text;
  const MyButton2(
      {super.key,
      //required this.chalo,
      required this.text,
      required void Function() onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.black,
        ),
        child: Center(
          child: Text("sign UP",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20)),
        ),
      ),
    );
  }
}
