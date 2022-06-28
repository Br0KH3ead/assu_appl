// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore_for_file: Unnecessary_new

import 'package:assu_app/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const starterPageTitle = 'Assurance';
const loginPageTitle = 'Login' ;


final appBarTextstyle = GoogleFonts.lato(
  fontSize: 23,
  fontWeight: FontWeight.bold,
);
final appBarMenu = GestureDetector(
  onTap:() {},
  child: Icon(Icons.menu),
);

final appBarSettings = GestureDetector(
  onTap: (){},
  child: Icon(Icons.more_vert),
);
//Main Title Style for screens
final mainScreenTextStyle = GoogleFonts.poppins(
    textStyle: TextStyle(
  shadows: const <Shadow>[
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 0.50,
      color: Color.fromARGB(255, 0, 0, 0),
    ),
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 0.2,
      color: Color.fromARGB(125, 0, 0, 255),
    )
  ],
  color: Mycolors.purple,
  fontSize: 36.0,
  fontWeight: FontWeight.bold,
));

final starterPageImage = Image.asset(
  "assets/images/infoCar.png",
  height: 250.0,
  width: 250.0,
);

final starterPageText = Flexible(
    child: Text(
  "Une nouvelle application pratique et fiable , dédiée à l'assurance automobile.",
  textDirection: TextDirection.ltr,
  style: GoogleFonts.lato(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Mycolors.mainTextColor,
  ),
));

final loginPageImage = Image.asset(
  "assets/images/loginImage.png",
  height: 250.0,
  width: 250.0,
);

