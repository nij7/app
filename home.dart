import 'package:flutter/material.dart';
import 'package:flutter_application_3/page.dart';

class testone extends StatefulWidget {
  const testone({Key? key}) : super(key: key);

  @override
  State<testone> createState() => _testoneState();
}

class _testoneState extends State<testone> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background_image.jpg'),
              fit: BoxFit.cover, // You can use BoxFit.fill if you want to fill the entire screen with the image.
            ),
          ),
            child: Column(
                  children: [
            SizedBox(
              height: 30,
            ),
            Text('Enter Details'),
            SizedBox(
              height: 40,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                hintText: 'Name',
                hintStyle: const TextStyle(color: Colors.grey),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                hintText: 'Email',
                hintStyle: const TextStyle(color: Colors.grey),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              controller: _numberController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                hintText: 'Phone Number',
                hintStyle: const TextStyle(color: Colors.grey),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
                hintText: 'address',
                hintStyle: const TextStyle(color: Colors.grey),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber)),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Two(name:_nameController.text,email:_emailController.text,number:_numberController.text, address: _addressController.text, )));
                },
                child: Text('Enter'))
                  ],
                ),
          )),
    );
  }
}