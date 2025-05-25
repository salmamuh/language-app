import 'package:flutter/material.dart';
import 'package:untitled6/components/item_num.dart';

import '../models/item_page.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<IPage> numbers = const [
    IPage(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'Ichi',
        enName: 'one',
        sound: 'number_one_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'two',
        sound: 'number_two_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'three',
        sound: 'number_three_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Yon',
        enName: 'four',
        sound: 'number_four_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'five',
        sound: 'number_five_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Roku',
        enName: 'six',
        sound: 'number_six_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Nana',
        enName: 'seven',
        sound: 'number_seven_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'ichi',
        enName: 'eight',
        sound: 'number_eight_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyuu',
        enName: 'nine',
        sound: 'number_nine_sound.mp3'),
    IPage(
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Juu',
        enName: 'ten',
        sound: 'number_ten_sound.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Numbers'),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
            itemCount: numbers.length,
            itemBuilder: (context, num) {
              return ItemNumber(
                number: numbers[num],
                iColor: Colors.orange,
              );
            }));
  }

  // List<Widget> getList(List<Number> numbers) {
  //   List<Widget> itemsList = [];
  //   for (var i = 0; i < numbers.length-1; i++) {
  //     itemsList.add(ItemNumber(number: numbers[i],))
  //   }
  //   return itemsList;
  // }
}
