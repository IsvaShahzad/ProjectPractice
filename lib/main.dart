import 'package:flutter/material.dart';
import 'LoginScreen.dart';
import 'contactseller.dart';

void main() {
  runApp(MyApp(
    productname: 'Initial Product Name', // Replace with the actual product name
    productdescription: 'Initial Product Description', // Replace with the actual product description
  ));
}

class MyApp extends StatelessWidget {
  final String productname;
  final String productdescription;

  const MyApp({
    Key? key,
    required this.productname,
    required this.productdescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginScreen(
        productname,
        productdescription,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
