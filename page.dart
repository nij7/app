import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Two extends StatelessWidget {
  const Two({Key? key,required this.name,
    required this.email,
    required this.number,
    required this.address,}) : super(key: key);
    final String name;
  final String email;
  final String number;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children:[
        Text(name),
        
      ]
    ),);
  }
}