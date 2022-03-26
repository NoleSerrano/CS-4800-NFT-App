import 'package:flutter/material.dart';
import 'package:android_deso_app/Screens/Components/nft_border_side.dart';
import 'package:android_deso_app/constants.dart';

// The widget will be contained inside an InkWell for tap features
NftListing(BuildContext context, Image image, String nftTitle,
    String nftUsername, String nftPrice) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
            border: Border(
              top: NftBorderSide(context),
              right: NftBorderSide(context),
              left: NftBorderSide(context),
            )),
        child: image,
        margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      ),
      Container(
        padding: EdgeInsets.only(left: 3),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: NftBorderSide(context),
              right: NftBorderSide(context),
            )),
        child: Align(
          child: Text(
            nftTitle,
            style: nftTitleStyle,
          ),
          alignment: Alignment.centerLeft,
        ),
        margin: EdgeInsets.only(left: 20, right: 20),
      ),
      Container(
        padding: EdgeInsets.only(left: 3),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: NftBorderSide(context),
              right: NftBorderSide(context),
            )),
        child: Align(
          child: Text('by ' + nftUsername, style: nftUserStyle),
          alignment: Alignment.centerLeft,
        ),
        margin: EdgeInsets.only(left: 20, right: 20),
      ),
      Container(
        padding: EdgeInsets.only(left: 3),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border(
              left: NftBorderSide(context),
              right: NftBorderSide(context),
              bottom: NftBorderSide(context),
            )),
        child: Align(
          child: Text(nftPrice + ' DESO', style: nftPriceStyle),
          alignment: Alignment.centerLeft,
        ),
        margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
      ),
    ],
  );
}
