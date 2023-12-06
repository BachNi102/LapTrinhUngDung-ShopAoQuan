import 'package:flutter/material.dart';
import 'package:store/Utilities/size_config.dart';
import 'package:store/constants/colors.dart';

import 'components/otp_body.dart';

class OTPScreen extends StatelessWidget {
  static const String routeName = "/otp";
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text("OTP Verification",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700, // Thay mau chu 
        ),),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black, // Đặt màu của IconButton thành đen
        ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: const OTPBody(),
    );
  }
}
