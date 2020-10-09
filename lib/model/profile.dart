import 'package:flutter/cupertino.dart';

class Profile {
  final String profileUrl;
  final String title;
  final String description;
  final String dateTime;
  final String amount;

  Profile(
      {@required this.profileUrl,
      @required this.title,
      @required this.description,
      @required this.dateTime,
      @required this.amount});
}

class Data {
  final List<Profile> profile = [
    Profile(
        profileUrl: AssetImage('assets/images/download.png').toString(),
        title: 'Planboard Market Research 1',
        description: 'Contract Payment',
        dateTime: 'Sept. 2, 2020',
        amount: '\$300'),
    Profile(
        profileUrl: AssetImage('assets/images/download.png').toString(),
        title: 'Planboard Market Research 1',
        description: 'Contract Payment',
        dateTime: 'Sept. 2, 2020',
        amount: '\$300'),
    Profile(
        profileUrl: AssetImage('assets/images/download.png').toString(),
        title: 'Planboard Market Research 1',
        description: 'Contract Payment',
        dateTime: 'Sept. 2, 2020',
        amount: '\$300'),
    Profile(
        profileUrl: AssetImage('assets/images/download.png').toString(),
        title: 'Planboard Market Research 1',
        description: 'Contract Payment',
        dateTime: 'Sept. 2, 2020',
        amount: '\$300')
  ];
}
