import 'package:flutter/material.dart';

import 'contactseller.dart';

class LoginScreen extends StatefulWidget {

  final String productname;
  final String productdescription;
  LoginScreen(this.productname,this.productdescription);
  @override

  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {


    return Container(
      child: Scaffold(
        body: Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('Hello to my application!'),
                ),
                Container(
                  child: Text(
                    'Email',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'please enter your email',
                      fillColor: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: const Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),

                ),
                Container(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'please enter password',
                    fillColor: Colors.orangeAccent),

                  ),
                ),


                ElevatedButton(onPressed: (){


                  final userEmail = emailController.text.trim();
                  if (userEmail.isNotEmpty) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ContactSellerPage(userEmail,widget.productname,widget.productdescription,),
                      ),
                    );
                  }                },
                    child: Text('Submit')),

                TextButton(onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen(widget.productname,widget.productdescription)));
                },
                    child: Text('Dont have an account? Sign up now!'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
