import 'package:flutter/material.dart';

import 'my_drop_menu.dart';
import 'my_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200.0,
      leading: const Icon(Icons.arrow_back),
      title: const Text('Transaction history'),
      titleSpacing: 0,
      flexibleSpace: FlexibleSpaceBar(
          background: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const MyDropMenu(
              text: Text(
                'Crypto',
                style: TextStyle(fontSize: 32, color: Colors.white),
              ),
              heigth: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Expanded(
                  child: MyDropMenu(
                    text: Text(
                      'Crypto Cells',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    heigth: 50,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                MyIcon(
                  Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                  ),
                  Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  padding: EdgeInsets.all(15),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}
