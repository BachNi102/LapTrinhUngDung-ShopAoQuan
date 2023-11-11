import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'components/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = "/signUp"; //ten de dieu huong Navigator
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign With Us",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700, // Thay mau chu 
        ),),
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black, // Đặt màu của IconButton thành đen
        ),
          onPressed: () => Navigator.pop(context), //dong mh
        ),
      ),
      body: const SignUpBody(),
    );
  }
}
