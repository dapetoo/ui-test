import 'package:flutter/material.dart';

class CardDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(2.0, 2.0),
            )
          ],
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15.0),
          gradient: LinearGradient(
            colors: [
              Color(0xFF2432F5),
              Color(0xFF6E76ED),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
            stops: [0.0, 0.4],
          )),
      child: Padding(
        padding: const EdgeInsets.only(right: 12.0, left: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  'Next outgoing payment',
                  style: TextStyle(fontSize: 14.0, color: Colors.white),
                )),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            //Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Due Sept. 11, 2020',
                  style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Planboard Market Research',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ],
            ),
            //Spacer(),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15.0,
                  child: CircleAvatar(
                    radius: 12.0,
                    backgroundImage: AssetImage('assets/images/download.png'),
                  ),
                ),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                    child: Text(
                  'Sarah John',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                )),
                Text(
                  '\$300.00',
                  style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
