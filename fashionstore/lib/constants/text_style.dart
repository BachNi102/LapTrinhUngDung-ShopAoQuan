import 'package:flutter/material.dart';
import 'package:store/Utilities/size_config.dart';

import 'colors.dart';

final headingStyle = TextStyle(
  fontSize: SizeConfig.getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);
const productHeadlineStyle = TextStyle(
  color: Colors.black,
  fontSize: 17,
  fontFamily: "Raleway",
  fontWeight: FontWeight.w700,
);

const textStyle = TextStyle(
  color: textpriceColor,
  fontSize: 15,
  fontFamily: "Raleway",
  fontWeight: FontWeight.w700,
);

const drawerItemTextStyle = TextStyle(
  color: Color.fromARGB(255, 233, 231, 231),
  fontSize: 17,
  fontFamily: "Raleway",
  fontWeight: FontWeight.w600,
);
const productTitleStyle = TextStyle(
  color: Colors.black,
  fontSize: 28,
  fontFamily: "Raleway",
  fontWeight: FontWeight.w600,
);

const colorTextStyle = TextStyle(
  color: Colors.black,
  fontSize: 12,
  fontFamily: "Raleway",
  fontWeight: FontWeight.w700,
);
const productDescriptionStyle = TextStyle(
  color: Color.fromARGB(255, 231, 230, 230),
  fontSize: 15,
  letterSpacing: 0.30,
  fontFamily: "Raleway",
);

const priceTextStyle = TextStyle(
  color: textpriceColor,
  fontSize: 18,
  fontWeight: FontWeight.w700,
);

const TextStyle splashHeadingTextStyle = TextStyle(
  fontFamily: "Knewave",
  fontSize: 80,
  fontWeight: FontWeight.w900,
  color: Color(0xFFFFB5C1),
  
);
const TextStyle kBannerTextStyle =
    TextStyle(fontSize: 34, fontWeight: FontWeight.w700, color: textpriceColor);

const TextStyle kSearchFieldTextStyle = TextStyle(
    fontWeight: FontWeight.w600, color: searchFieldTextColor, fontSize: 17);
