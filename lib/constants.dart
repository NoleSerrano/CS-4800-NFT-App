import 'package:flutter/material.dart';

final appPrimaryColor = Colors.blue[600];

// text style for the headings of various pages
final TextStyle boldHeading = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

// elevated button style for buttons of various pages
final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  primary: Color(0xff178de8),
  fixedSize: Size(270, 55),
  textStyle: TextStyle(fontSize: 20, color: Colors.white)
);

// text style for information
final TextStyle regularTextStyle = TextStyle(fontSize: 16);

// text style for deso wallet addresses
final TextStyle smallBold = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

// text style for nft items
final TextStyle nftTitleStyle = TextStyle(fontSize: 18, fontWeight:  FontWeight.bold);
final TextStyle nftUserStyle = TextStyle(fontSize: 18);
final TextStyle nftPriceStyle = TextStyle(fontSize: 18, color: Colors.blue);
final TextStyle nftDescriptionStyle = TextStyle(fontSize: 16);