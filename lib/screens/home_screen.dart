import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voomsway_task_app/widgets/activities_tab.dart';
import 'package:voomsway_task_app/widgets/card_dashboard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: _buildAppBar(),
          body: TabBarView(children: [
            ActivitiesTab(),
            Scaffold(
              body: Text('Tab2'),
            ),
            Scaffold(
              body: Text('Tab3'),
            ),
          ]),
        ));
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              'Overview',
              style: TextStyle(
                  color: Color(0xFF4835CA),
                  fontWeight: FontWeight.w800,
                  fontSize: 26.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Container(
              width: 110,
              height: 30,
              decoration: BoxDecoration(
                color: Color(0xFFEB7549),
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  '+New Contract',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      automaticallyImplyLeading: false,
      bottom: TabBar(
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              child: Text(
                'Activities',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                'Paying',
                style: TextStyle(
                    //color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Tab(
              child: Text(
                'Receiving',
                style: TextStyle(
                    //color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ]),
    );
  }
}
