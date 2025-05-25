import 'package:flutter/material.dart';
import 'package:untitled6/components/phrase_item.dart';

import '../components/item_num.dart';
import '../models/phrase.dart';

class PhasesPage extends StatelessWidget {
  const PhasesPage({super.key});
  final List<Phase> phases = const [
    Phase(
        jpPhrase: 'Puroguramingu ga daisukidesu',
        enPhrase: 'I love programming',
        sound: 'i_love_programming.wav'),
    Phase(
        jpPhrase: 'Watashi wa anime ga daisukidesu',
        enPhrase: 'I love animie',
        sound: 'i_love_anime.wav')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Numbers'),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
            itemCount: phases.length,
            itemBuilder: (context, index) {
              return PhraseItem(
                number: phases[index],
                iColor: Colors.blue,
              );
            }));
  }
}
