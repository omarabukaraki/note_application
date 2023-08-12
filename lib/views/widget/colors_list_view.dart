import 'package:flutter/material.dart';

import '../../constant.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 40,
            backgroundColor: kPrimaryColor,
            child: CircleAvatar(radius: 37, backgroundColor: color))
        : CircleAvatar(radius: 40, backgroundColor: color);
  }
}

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> colors = const [
    Color(0xffcddafd),
    Color(0xffffafcc),
    Color(0xffdfe7fd),
    Color(0xffffc8dd),
    Color(0xfff0efeb),
    Color(0xffcdb4db),
    Color(0xffa2d2ff),
    Color(0xffbde0fe),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                )),
          );
        },
      ),
    );
  }
}
