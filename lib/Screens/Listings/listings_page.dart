import 'package:android_deso_app/Screens/Components/nft_border_side.dart';
import 'package:android_deso_app/Screens/Components/nft_listing.dart';
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
      body: SingleChildScrollView(
        child: Center(
          // all the NFT listings
          child: Column(
            children: [
              // A single NFT listing - InkWell makes it clickable
              InkWell(
                onTap: () {},
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(
                    context,
                    Image.network(
                        'https://www.topgear.com/sites/default/files/images/news-article/2017/11/14407fdb851d08766e90724827008664/2019-corvette-zr1-worldpremier-02.jpg?w=1280&h=720'),
                    'Chevrolet Corvette ZR1 - 2019',
                    'jellysmith987',
                    '747.495888773'),
              ),

              InkWell(
                onTap: () {},
                highlightColor: Colors.blue[200],
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: NftListing(
                    context,
                    Image.asset('lib/assets/default image.png'),
                    'nftTitle',
                    'nftUsername',
                    'nftPrice'),
              ),
            ],
          ),
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
