import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Karla',
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal:15),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Hi there!',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                'I am',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Container(
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Image(
                  image: AssetImage('assets/images/profile.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                'Ayush Raj',
                style: TextStyle(
                    fontFamily: 'SansitaSwashed',
                    color: Colors.white,
                    fontSize: 30),
              ),
              Text(
                'FLUTTER LEARNER',
                style: TextStyle(
                    color: Colors.white, fontSize: 30, letterSpacing: 2),
              ),

              Container(
                width: 200,
                color: Colors.white,
                child: Divider(
                  color: Colors.white,
                  height: 1
                ),

              ),

              _buildInfo(Icons.call, '+91 98765 43210'),
              _buildInfo(Icons.mail, 'xyz@testmail.com'),
              _buildInfo(Icons.my_location, 'Kolkata, WB')
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfo(IconData icon, String text) => Container(
    
    // decoration: BoxDecoration(
    //   //color: Colors.white,
    //   //borderRadius: BorderRadius.all(Radius.circular(7)) //*
    // ),

    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Icon(
                icon,
                color: Colors.teal,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 20, 
                fontWeight: FontWeight.bold 
              ),
            )
          ],
        ),
      ),
    ),
  );
}
