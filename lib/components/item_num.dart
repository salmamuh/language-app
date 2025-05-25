import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/models/item_page.dart';

class ItemNumber extends StatelessWidget {
  const ItemNumber({super.key, required this.number, required this.iColor});
  final phraseItem number;
  final Color iColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      color: iColor,
      child: Row(
        children: [
          Container(color: Colors.white, child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              try {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));
              } catch (ex) {
                print(ex);
              }
            },
          ),
        ],
      ),
    );
  }
}
