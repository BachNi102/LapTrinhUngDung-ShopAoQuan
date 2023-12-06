import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/presentation/widgets/custom_circle.dart';

class WelcomeBack extends StatelessWidget {
  const WelcomeBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryColor,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Stack(
        children: [
          Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              left: MediaQuery.of(context).size.width * 0.25,
              child: const CustomCircle(
                width: 35,
                height: 35,
                color: circleColor,
              )),
          Positioned(
              top: MediaQuery.of(context).size.height * -0.075,
              right: MediaQuery.of(context).size.width * 0.03,
              child: const CustomCircle(
                width: 150,
                height: 150,
                gradient: circleGradientColor,
                color: circleColor,
                borderWidth: 0,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Welcome\nBack ",
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 55,
                  color: Color.fromARGB(255, 19, 18, 18)),
            ),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.06,
              right: MediaQuery.of(context).size.width * 0.18,
              child: const CustomCircle(
                width: 45,
                height: 45,
                color: circleColor,
                borderWidth: 0,
              )),
        ],
      ),
    );
  }
}
