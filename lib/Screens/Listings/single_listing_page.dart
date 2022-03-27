import 'package:android_deso_app/Screens/Elements/app_bar.dart';
import 'package:android_deso_app/Screens/Elements/app_bottom_navigation_bar2.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../Components/nft_border_side.dart';

class SingleListingPage extends StatefulWidget {
  const SingleListingPage({Key? key}) : super(key: key);

  @override
  State<SingleListingPage> createState() => _SingleListingPageState();
}

class _SingleListingPageState extends State<SingleListingPage> {
  Image image = Image.network(
      'https://www.topgear.com/sites/default/files/images/news-article/2017/11/14407fdb851d08766e90724827008664/2019-corvette-zr1-worldpremier-02.jpg?w=1280&h=720');
  String nftTitle = 'Chevrolet Corvette ZR1 - 2019';
  String nftUsername = 'jellysmith987';
  String nftPrice = '747.495888773';
  String nftDescription =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eleifend sapien nulla, ac ultricies erat eleifend at. Praesent facilisis semper bibendum. Pellentesque tincidunt tortor velit, et ultrices magna hendrerit eu. Vivamus cursus pharetra interdum. Integer interdum quam id posuere fringilla. Nam augue nunc, elementum sed bibendum interdum, tincidunt id ante. Proin lorem neque, tempor ut dictum vitae, ornare in velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Fusce in consectetur metus. Integer tincidunt nisl quis tellus scelerisque, quis sollicitudin turpis posuere. Aenean mollis tellus pellentesque pulvinar cursus. Aenean ornare, libero id accumsan iaculis, ligula quam lacinia nibh, non blandit enim velit quis odio. In at risus urna. Donec sit amet semper dui.\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Aenean ac leo tincidunt, elementum mi ac, aliquet nisi. Fusce vitae tincidunt risus, eget laoreet libero. Vestibulum turpis quam, commodo vel pretium congue, ultricies et odio. Maecenas nec risus feugiat, porta odio eu, finibus eros. Quisque cursus urna justo, at lobortis ligula imperdiet ut. Aenean vel congue turpis, at feugiat ex.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: desoAppBar(context, true),
      body: Column(
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
            // necessary width because otherwise if text is too small the scroll messes it up
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: NftBorderSide(context),
                  left: NftBorderSide(context),
                  right: NftBorderSide(context),
                )),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Align(
                child: Text(
                  nftTitle,
                  style: nftTitleStyle,
                ),
                alignment: Alignment.centerLeft,
              ),
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
          ),
          Container(
            padding: EdgeInsets.only(left: 3),
            // necessary width because otherwise if text is too small the scroll messes it up
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: NftBorderSide(context),
                  right: NftBorderSide(context),
                )),

            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Align(
                child: Text('by ' + nftUsername, style: nftUserStyle),
                alignment: Alignment.centerLeft,
              ),
            ),

            margin: EdgeInsets.only(left: 20, right: 20),
          ),
          Container(
            padding: EdgeInsets.only(left: 3),
            // necessary width because otherwise if text is too small the scroll messes it up
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: NftBorderSide(context),
                  right: NftBorderSide(context),
                  bottom: NftBorderSide(context),
                )),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Align(
                child: Text(nftPrice + ' DESO', style: nftPriceStyle),
                alignment: Alignment.centerLeft,
              ),
            ),
            margin: EdgeInsets.only(left: 20, right: 20),
          ),
          Container(
            padding: EdgeInsets.only(left: 3),
            // necessary width because otherwise if text is too small the scroll messes it up
            height: 192,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: NftBorderSide(context),
                  right: NftBorderSide(context),
                  bottom: NftBorderSide(context),
                )),
            child: SingleChildScrollView(
              child: Align(
                child: Text(
                  nftDescription,
                  style: nftDescriptionStyle,
                ),
                alignment: Alignment.topLeft,
              ),
            ),
            margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
          ),
        ],
      ),
      bottomNavigationBar: AppBottomNavBar2(),
    );
  }
}
