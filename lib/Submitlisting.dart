import 'package:flutter/material.dart';
import 'package:practice_interview/LoginScreen.dart';
import 'package:practice_interview/contactseller.dart';

class Listing extends StatefulWidget {
  final String userEmail; // Add this parameter

  Listing(this.userEmail); // Constructor
  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {

  TextEditingController descriptionController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController imageController = TextEditingController();


  @override

  Widget build(BuildContext context) {
    return Container(

      child: Scaffold(
        body: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 50),
                    child:Text('Submit your listings here!!')),

                Container(
                  child: Text('Product Name'),
                ),
                Padding(padding: EdgeInsets.only(top: 20),
                  child: TextFormField(
                    controller: nameController,
                  decoration: InputDecoration(
                    hintText: 'Enter product name',
                    fillColor: Colors.grey,
                  )
                ),),
                SizedBox(height: 20),
                 Text('Product Description'),
                Padding(padding: EdgeInsets.only(top: 20), child: TextFormField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                    hintText: 'Enter product description',
                    fillColor: Colors.grey,
                  ),
                ),),

                ElevatedButton(onPressed:(){

                  final productname = nameController.text;
                  final productdescription = descriptionController.text;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> ContactSellerPage(productname, productdescription,widget.userEmail)));
                } ,
                    child: Text('Submit Listing'))
              ],
            ),
          ),
        )
      ),

    );
  }
}
