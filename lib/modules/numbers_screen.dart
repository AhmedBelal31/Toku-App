import 'package:flutter/material.dart';
import '../models/sharedItem_model.dart';
import '../shared/components.dart';

class NumbersScreen extends StatefulWidget {
  @override
  State<NumbersScreen> createState() => _NumbersScreenState();
}

class _NumbersScreenState extends State<NumbersScreen> {
  //const NumbersScreen({Key? key}) : super(key: key);
  List<ItemModel> number = [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'Ichi',
      sound: 'assets/sounds/numbers/number_one_sound.mp3',
      enName: 'One',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'Ni',
      sound: 'assets/sounds/numbers/number_two_sound.mp3',
      enName: 'Two',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'San',
      sound: 'assets/sounds/numbers/number_three_sound.mp3',
      enName: 'three',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      sound: 'assets/sounds/numbers/number_four_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_five.png',
        sound: 'assets/sounds/numbers/number_five_sound.mp3',
        jpName: 'Go',
        enName: 'five'),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      sound: 'assets/sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      sound: 'assets/sounds/numbers/number_seven_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      sound: 'assets/sounds/numbers/number_eight_sound.mp3',
      jpName: 'Hachi',
      enName: 'eight',
    ),
    ItemModel(
        image: 'assets/images/numbers/number_nine.png',
        sound: 'assets/sounds/numbers/number_nine_sound.mp3',
        jpName: 'Kyū',
        enName: 'nine'),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      sound: 'assets/sounds/numbers/number_ten_sound.mp3',
      jpName: 'Jū',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text(
          "Numbers ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color(0xff46322B),
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
        itemBuilder: (context, index) => buildItemCategory(number[index]),
        itemCount: number.length,
      ),
    );
  }
}

// Widget numberCategory(ItemModel item) {
//   return Container(
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(12.0),
//       color: const Color(0xffEF9235),
//     ),
//     margin: const EdgeInsets.all(8),
//     child: Row(
//       children: [
//         Container(
//             color: const Color(0xffFEF6DB), child: Image.asset(item.image!)),
//         const SizedBox(
//           width: 8,
//         ),
//         Column(
//          // mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               item.jpName,
//               style: const TextStyle(color: Colors.white, fontSize: 18),
//             ),
//             Text(item.enName,
//                 style: const TextStyle(color: Colors.white, fontSize: 18)),
//           ],
//         ),
//         const Spacer(),
//         IconButton(
//           onPressed: () {
//             AssetsAudioPlayer player = AssetsAudioPlayer();
//             player.open(Audio("${item.sound}"));
//
//           },
//           icon: const Icon(
//             Icons.play_arrow,
//             color: Colors.white,
//           ),
//         ),
//       ],
//     ),
//   );
// }
