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
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xff178de8)),
                  fixedSize:  MaterialStateProperty.all<Size>(Size(270, 55)),
                  textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 20, color: Colors.white))
                ),

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
