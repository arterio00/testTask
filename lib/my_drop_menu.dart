import 'package:flutter/material.dart';

class MyDropMenu extends StatelessWidget {
  final double heigth;
  final Widget text;
  const MyDropMenu({super.key, required this.heigth, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.centerLeft,
      height: heigth,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.all(Radius.circular(13))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text,
          const Icon(
            Icons.arrow_downward_outlined,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
