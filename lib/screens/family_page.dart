import 'package:flutter/material.dart';

import '../components/item_num.dart';
import '../models/item_page.dart';

class FamilyMemberPage extends StatelessWidget {
  const FamilyMemberPage({super.key});

  @override
  final List<IPage> familyMember = const [
    IPage(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'chichi',
        enName: 'father',
        sound: 'number_one_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'musume',
        enName: 'daughter',
        sound: 'daughter.wav'),
    IPage(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'sofu',
        enName: 'grandfather',
        sound: 'number_three_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'haha',
        enName: 'Mother',
        sound: 'number_four_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'sobo',
        enName: 'grand mother',
        sound: 'number_five_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'ani',
        enName: 'older brother',
        sound: 'number_six_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Nana',
        enName: 'older sister',
        sound: 'number_seven_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'musuko',
        enName: 'son',
        sound: 'number_eight_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'otouto',
        enName: 'younger brother',
        sound: 'number_nine_sound.mp3'),
    IPage(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'imouto',
        enName: 'younger sister',
        sound: 'number_ten_sound.mp3'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Family Members'),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
            itemCount: familyMember.length,
            itemBuilder: (context, num) {
              return ItemNumber(
                number: familyMember[num],
                iColor: Colors.green,
              );
            }));
  }
}
