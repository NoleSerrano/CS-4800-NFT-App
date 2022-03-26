import 'package:android_deso_app/Screens/Components/nft_border_side.dart';
import 'package:android_deso_app/Screens/Listings/create_listing_page.dart';
import 'package:flutter/material.dart';
import 'package:android_deso_app/constants.dart';

class ListingsPage extends StatefulWidget {
  const ListingsPage({Key? key}) : super(key: key);

  @override
  State<ListingsPage> createState() => _ListingsPageState();
}

class _ListingsPageState extends State<ListingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // all the NFT listings
        child: Column(
          children: [
            // A single NFT listing - InkWell makes it clickable
            InkWell(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                          top: NftBorderSide(context),
                          right: NftBorderSide(context),
                          left: NftBorderSide(context),
                        )
                    ),
                    child: Image.asset('lib/assets/default image.png'),
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        left: NftBorderSide(context),
                        right: NftBorderSide(context),
                      )
                    ),
                    child: Align(
                      child: Text(
                        'Unique Thing',
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
                        )
                    ),
                    child: Align(
                      child: Text('by jellysmith987', style: nftUserStyle),
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
                        )
                    ),
                    child: Align(
                      child: Text('300.0560 DESO', style: nftPriceStyle),
                      alignment: Alignment.centerLeft,
                    ),
                    margin: EdgeInsets.only(bottom: 20, left: 20, right: 20),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: BottomAppBar(
          color: Colors.white,
          child: Container(
            margin: EdgeInsets.only(),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateListingPage()),
                  );
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xff178de8)),
                    fixedSize: MaterialStateProperty.all<Size>(Size(270, 55)),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                        TextStyle(fontSize: 20, color: Colors.white))),
                child: Text(
                  'Create a listing',
                )),
          ),
          elevation: 0,
        ),
      ),
    );
  }
}
