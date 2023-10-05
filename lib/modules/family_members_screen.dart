import 'package:flutter/material.dart';
import '../models/sharedItem_model.dart';
import '../shared/components.dart';

class FamilyMembersScreen extends StatelessWidget {
  // const FamilyMembers({Key? key}) : super(key: key);
  List<ItemModel> family = [
    ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      sound: 'assets/sounds/family_members/father.wav',
      enName: 'father',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      sound: 'assets/sounds/family_members/daughter.wav',
      enName: 'daughter',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojisan',
      sound: 'assets/sounds/family_members/grand father.wav',
      enName: 'Grand Father',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      sound: 'assets/sounds/family_members/mother.wav',
      jpName: 'Hahaoya',
      enName: 'mother',
    ),
    ItemModel(
        image: 'assets/images/family_members/family_grandmother.png',
        sound: 'assets/sounds/family_members/grand mother.wav',
        jpName: 'Sobo',
        enName: 'Grand Mother'),
    ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      sound: 'assets/sounds/family_members/older bother.wav',
      jpName: 'Nisan',
      enName: 'older brother',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      sound: 'assets/sounds/family_members/older sister.wav',
      jpName: 'Ane',
      enName: 'older sister',
    ),
    ItemModel(
      image: 'assets/images/family_members/family_son.png',
      sound: 'assets/sounds/family_members/son.wav',
      jpName: 'Musuko',
      enName: 'son',
    ),
    ItemModel(
        image: 'assets/images/family_members/family_younger_sister.png',
        sound: 'assets/sounds/family_members/younger sister.wav',
        jpName: ' Imōto',
        enName: 'younger sister'),
    ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      sound: 'assets/sounds/family_members/younger brohter.wav',
      jpName: 'Otouto',
      enName: 'younger brother',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text(
          "Family Members ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff5c893c),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            buildItemCategory(family[index], containerColor: Color(0xff5c893c)),
        itemCount: family.length,
      ),
    );
  }
}
