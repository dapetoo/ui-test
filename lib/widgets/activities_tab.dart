import 'package:flutter/material.dart';
import 'package:voomsway_task_app/widgets/widgets.dart';

class ActivitiesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(
            right: 16.0, left: 16.0, top: 8.0, bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Stack(
                children: [
                  CardDashboard(),
                  Positioned(
                    child: Text(
                      'test@exampl.com',
                      style: TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w600),
                    ),
                    top: -7,
                    right: 0,
                  ),
                ],
              ),
            ),
            // CardDashboard(),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Payments Due',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.red),
            ),
            SizedBox(
              height: 8.0,
            ),
            ItemsList(),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Today',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.grey),
            ),
            SizedBox(
              height: 8.0,
            ),
            //ListView.builder(itemBuilder: null),
            ItemsList2(),
            SizedBox(
              height: 8.0,
            ),
            ItemsList2(),
            SizedBox(
              height: 8.0,
            ),
            ItemsList2(),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
