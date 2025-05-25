import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/models/item_page.dart';

class PhraseItem extends StatelessWidget {
  const PhraseItem({super.key, required this.number, required this.iColor});
  final PhraseItem number;
  final Color iColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      color: iColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jp,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  number.enPhrase,
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
