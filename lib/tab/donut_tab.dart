import 'package:flutter/material.dart';

import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  DonutTab({Key? key}) : super(key: key);

  List donutonSale = [
    // [ donutFlavour, donutPrice, donutColor, imageName ]
    ["Ice Cream", "36", Colors.blue, "lib/images/donut red.png"],
    ["Strawberry", "45", Colors.red, "lib/images/donut pink.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/donut green.png"],
    ["Choco", "95", Colors.brown, "lib/images/donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      itemCount: donutonSale.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
           childAspectRatio: 1/1.6
        ),
        itemBuilder: (context, index) => DonutTile(
          donutFlavor: donutonSale[index][0],
          donutColor: donutonSale[index][2],
          donutPrice: donutonSale[index][1],
          imageName: donutonSale[index][3],
        ));
  }
}
