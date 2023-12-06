import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/presentation/screens/sign_up/components/sign_up_form.dart';
import 'component/complete_profile_body.dart';

class CompleteProfileScreen extends StatelessWidget {
  static const String routeName ="/complete_profile";
  const CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userData = ModalRoute.of(context)!.settings.arguments  as ScreenArgs;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        title: const Text("Complete Your Profile",
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
      body:  CompleteProfileBody(userData: userData),
    );
  }
}
