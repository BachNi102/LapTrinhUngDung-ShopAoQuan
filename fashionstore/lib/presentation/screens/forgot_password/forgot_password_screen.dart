import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'components/forgot_password_body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String routeName = "/forgot_password";
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset Password"),
        centerTitle: true,
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black, // Đặt màu của IconButton thành đen
        ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const ForgotPasswordBody(),
    );
  }
}
