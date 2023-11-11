import 'package:flutter/material.dart';
import 'package:store/constants/colors.dart';
import 'package:store/presentation/widgets/default_button.dart';

class NoFavorite extends StatelessWidget {
  const NoFavorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: Image.asset(
            "assets/images/no_favorite.png",
            fit: BoxFit.contain,
          ),
        ),
        const Text(
          "No favorites yet",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontFamily: "Raleway",
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 10,),
        const Opacity(
          opacity: 0.57,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 80),
            child: Text(
              "Hit the button down below to Create an order",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: DefaultButton(
            onPressed: (){},
            backgroundColor: backgroundbtColor,
            forgroundColor: textbtColor,
            text: "Start ordering",
            width: 250,
            height: 60,
          ),
        )
      ],
    );
  }
}
