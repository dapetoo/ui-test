import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 4.0, bottom: 4.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/download.png'),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sept. 21 2020',
                style: TextStyle(color: Colors.red),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Planboard Market Research',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    '\$300.00',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0),
                  ),
                ],
              ),
              Text(
                'Second Payment',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Icon(Icons.more_vert)
        ],
      ),
    );
  }
}

class ItemsList2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.3,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 4.0, bottom: 4.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/download.png'),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Sept. 21 2020',
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Planboard Market Research',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black45,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 40.0,
                  ),
                  Text(
                    '\$300.00',
                    style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0),
                  ),
                ],
              ),
              Text(
                'Second Payment',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Container()
        ],
      ),
    );
  }
}
