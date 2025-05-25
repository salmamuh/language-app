import 'package:flutter/material.dart';
import 'package:untitled6/screens/colors_page.dart';
import 'package:untitled6/screens/family_page.dart';
import 'package:untitled6/screens/numbers_page.dart';
import 'package:untitled6/screens/phrases_page.dart';

import '../components/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('toku'),
        ),
        body: Column(
          children: [
            Category('Numbers', Colors.orange, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              }));
            }),
            Category('FamilyMembers', Colors.green, () {
               Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return FamilyMemberPage();
              }));
            }),
            Category('Colors', Colors.purple, () {Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return ColorsPage();
              }));
              }),
            Category('Phrases', Colors.blue, () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return PhasesPage();
              }));
            }),
          ],
        ));
  }
}
