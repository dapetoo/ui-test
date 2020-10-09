import 'screens.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Welcome to',
            style: TextStyle(
                letterSpacing: 2.5,
                fontSize: 26.0,
                fontWeight: FontWeight.w600),
          ),
          Text(
            'BILLGUM',
            style: TextStyle(
                letterSpacing: 2.5,
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4835CA)),
          ),
          Center(
              child: Text(
            'Contract, Bill, and Payment \n tracking for \n individuals and small businesses',
            textAlign: TextAlign.center,
            style: TextStyle(
              letterSpacing: 1.6,
            ),
          )),
          Container(
            margin: EdgeInsets.only(right: 15.0, left: 15.0),
            child: Image(
              image: AssetImage('assets/images/welcome_screen.png'),
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50.0,
            child: Padding(
              padding: const EdgeInsets.only(right: 40.0, left: 40),
              child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationScreen()));
                  },
                  elevation: 3.0,
                  color: Color(0xFFEB7549),
                  //fillColor:
                  child: Text(
                    'Get started',
                    style: TextStyle(color: Colors.white),
                  ),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.grey.shade300,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
        ],
      ),
    );
  }
}
