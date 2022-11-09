import 'package:flutter/material.dart';

import 'cell_data.dart';
import 'my_icon.dart';

class MyCell extends StatelessWidget {
  const MyCell({super.key, required this.data});
  final CellData data;
  final textStyle = const TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              data.operation == Operation.sell
                  ? selectIcon(
                      context,
                      Colors.pink,
                      Icons.minimize,
                    )
                  : selectIcon(context, Colors.green, Icons.add),
              const SizedBox(
                width: 20,
              ),
              Text(
                data.operation == Operation.sell ? 'Sell' : 'Buy',
                style: textStyle,
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                data.ticker,
                style: textStyle,
              ),
              const Spacer(),
              Text(
                '${data.amount} ${data.ticker}',
                style: textStyle,
              ),
            ],
          ),
          Row(
            children: [
              const SizedBox(width: 60),
              Text('${data.date.month}/${data.date.day}/${data.date.year}'),
              const Spacer(),
              Text(
                '${data.cost} USD',
                style: textStyle,
              ),
            ],
          ),
          const SizedBox(height: 15),
          const Divider(
            color: Colors.grey,
            height: 0,
          )
        ],
      ),
    );
  }

  MyIcon selectIcon(BuildContext context, Color color, IconData icon) {
    return MyIcon(
      Padding(
        padding: EdgeInsets.only(bottom: color == Colors.green ? 0.0 : 20.0),
        child: Icon(
          icon,
          size: 30,
          color: color,
        ),
      ),
      color,
      boxShape: BoxShape.circle,
      padding: const EdgeInsets.all(5.0),
    );
  }
}
