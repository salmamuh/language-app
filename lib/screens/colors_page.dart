import 'package:flutter/material.dart';
import '../components/item_num.dart';
import '../models/item_page.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  final List<IPage> colorName = const [
    IPage(
        image: 'assets/images/colors/color_black.png',
        jpName: 'kuro',
        enName: 'Black',
        sound: 'black.wav'),
    IPage(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'chairo',
        enName: 'Brown',
        sound: 'brown.wav'),
    IPage(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Haiiro',
        enName: 'Grey',
        sound: 'gray.wav'),
    IPage(
        image: 'assets/images/colors/color_green.png',
        jpName: 'midori',
        enName: 'green',
        sound: 'green.wav'),
    IPage(
        image: 'assets/images/colors/color_red.png',
        jpName: 'aka',
        enName: 'Red',
        sound: 'red.wav'),
    IPage(
        image: 'assets/images/colors/color_white.png',
        jpName: 'shiro',
        enName: 'White',
        sound: 'white.wav'),
    IPage(
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro',
        enName: 'Yellow',
        sound: 'yellow.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colors'),
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
            itemCount: colorName.length,
            itemBuilder: (context, num) {
              return ItemNumber(
                number: colorName[num],
                iColor: Colors.purple,
              );
            }));
  }
}
