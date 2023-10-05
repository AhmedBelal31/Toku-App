import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import '../models/sharedItem_model.dart';

class PhrasesScreen extends StatelessWidget {
  // const ColorsScreen({Key? key}) : super(key: key);
  List<ItemModel> phrases = [
    ItemModel(
      jpName: 'Kodoku suru koto o wasurenaide kudassai',
      sound: 'assets/sounds/phrases/are_you_coming.wav',
      enName: 'Are you coming',
    ),
    ItemModel(
      jpName: 'Kodoku suru koto o wasurenaide kudassai    '   ,
      sound: 'assets/sounds/phrases/dont_forget_to_subscribe.wav',
      enName: "Don't forget to subscribe",
    ),
    ItemModel(
      jpName: 'Doko ni iku no',
      sound: 'assets/sounds/phrases/how_are_you_feeling.wav',
      enName: 'how are you feeling',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu ',
      enName: 'i love anime',
    ),
    ItemModel(
        sound: 'assets/sounds/phrases/i_love_programming.wav',
        jpName: 'i love programming.wav',
        enName: 'Watashi wa puroguramingu daiskidesu '),
    ItemModel(
      sound: 'assets/sounds/phrases/i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/programming_is_easy.wav',
      jpName: 'programming is easy',
      enName: 'Doko ni iku no',
    ),
    ItemModel(
      sound: 'assets/sounds/phrases/what_is_your_name.wav',
      jpName: 'what is your name',
      enName: 'Doko ni iku no',
    ),
    ItemModel(
        sound: 'assets/sounds/phrases/where_are_you_going.wav',
        jpName: ' where are you going',
        enName: 'Watashi wa puroguramingu daiskidesu'),
    ItemModel(
      sound: 'assets/sounds/phrases/red.wav',
      jpName: 'yes im coming',
      enName: 'Watashi wa puroguramingu daiskidesu',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Phrases ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff50afd5),
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
        itemBuilder: (context, index) => phrasesCategory(phrases[index]),
        itemCount: phrases.length,
      ),
    );
  }
}
Widget phrasesCategory(ItemModel item) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.0),
      color: const  Color(0xff50afd5),
    ),
    margin: const EdgeInsets.all(8),
    padding: const EdgeInsets.all(17),
    child: Row(
      children: [
        Expanded(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jpName,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(item.enName,
                  style:  TextStyle(color: Colors.grey[800], fontSize: 18)),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            AssetsAudioPlayer player = AssetsAudioPlayer();
            player.open(Audio(item.sound));

          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}