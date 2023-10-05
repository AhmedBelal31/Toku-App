import 'package:flutter/material.dart';
import '../models/sharedItem_model.dart';
import '../shared/components.dart';

class ColorsScreen extends StatelessWidget {
  // const ColorsScreen({Key? key}) : super(key: key);
  List<ItemModel> colors = [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Burakku',
      sound: 'assets/sounds/colors/black.wav',
      enName: 'black',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      sound: 'assets/sounds/colors/brown.wav',
      enName: 'brown',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Hokori ppoi Kiiro',
      sound: 'assets/sounds/colors/dusty yellow.wav',
      enName: 'dusty yellow',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      sound: 'assets/sounds/colors/gray.wav',
      jpName: 'Gure',
      enName: 'gray',
    ),
    ItemModel(
        image: 'assets/images/colors/color_green.png',
        sound: 'assets/sounds/colors/green.wav',
        jpName: 'Midori',
        enName: 'green'),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      sound: 'assets/sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
    ),
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      sound: 'assets/sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'black',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      sound: 'assets/sounds/colors/white.wav',
      jpName: 'Shiroi',
      enName: 'white',
    ),
    ItemModel(
        image: 'assets/images/colors/yellow.png',
        sound: 'assets/sounds/colors/yellow.wav',
        jpName: ' Kiiro',
        enName: 'yellow'),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      sound: 'assets/sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'red',
    ),
  ];
  ItemModel? itemModel ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Colors ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff844bad),
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
        itemBuilder: (context, index) => buildItemCategory(colors[index] , containerColor: Color(0xff844bad)),
        itemCount: colors.length,
      ),
    );
  }
}
