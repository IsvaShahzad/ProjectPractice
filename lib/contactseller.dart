import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practice_interview/Submitlisting.dart';

class ContactSellerPage extends StatelessWidget {
  final String userEmail;
  final String productname;
  final String productdescription;

  ContactSellerPage(this.userEmail, this.productname,this.productdescription);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('Seller email:'),
                ),
                Text(userEmail),


                ElevatedButton(
                  onPressed:(){
                  _onClipboardFunc(userEmail,context);
                },
                  child: Text('Contact Seller'),
                ),
              ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => Listing(userEmail)));
              },
                  child: Text('Submit listings'))
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _onClipboardFunc(String text, BuildContext context)
  {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Copied to clipboard!'),
    ));

  }

}
