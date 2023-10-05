import 'package:flutter/material.dart';
import 'package:toku_app/modules/phrases.dart';
import '../shared/components.dart';
import 'colors_screen.dart';
import 'family_members_screen.dart';
import 'numbers_screen.dart';

class TokuHomeScreen extends StatelessWidget {
  const TokuHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text(
          "TOKU ",
          style: TextStyle(color: Colors.white, fontFamily: 'Pacifico'),
        ),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          defaultContainer(
            color: const Color(0xffEF9235),
            text: "Numbers",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NumbersScreen(),
                ),
              );
            },
          ),
          defaultContainer(
            color: const Color(0xff5c893c),
            text: "FamilyMembers",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FamilyMembersScreen(),
                ),
              );
            },
          ),
          defaultContainer(
            color: const Color(0xff844bad),
            text: "Colors",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ColorsScreen(),
                ),
              );
            },
          ),
          defaultContainer(
            color: const Color(0xff50afd5),
            text: "Phrases",
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PhrasesScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
