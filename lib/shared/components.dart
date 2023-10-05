import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import '../const.dart';
import '../models/sharedItem_model.dart';

Widget allAppsContainer(
    {required Color color, required String text, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      height: 65,
      padding: const EdgeInsets.only(left: 24.0),
      margin: const EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: color,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget defaultContainer(
    {required Color color, required String text, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: double.infinity,
      height: 65,
      padding: const EdgeInsets.only(left: 24.0),
      margin: const EdgeInsets.all(8),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: color,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget buildItemCategory(ItemModel item ,
    {Color containerColor = containerColor}
    )
{
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color:containerColor  ,
    ),
    margin: const EdgeInsets.all(8),
    child: Row(
      children: [
        Container(
            color:Color(0xffFEF6DB) , child: Image.asset(item.image!)),
        const SizedBox(
          width: 8,
        ),
        Column(
          // mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.jpName,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(item.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
        const Spacer(),
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
