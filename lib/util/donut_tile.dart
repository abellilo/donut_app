import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  final double borderRadius = 12;

  const DonutTile(
      {Key? key,
      required this.donutFlavor,
      required this.donutPrice,
      required this.donutColor,
      required this.imageName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(borderRadius),
                            topRight: Radius.circular(borderRadius))),
                    child: Text(
                      '\$' + donutPrice,
                      style: TextStyle(
                          color: donutColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),

            //donut picture
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Image.asset(imageName),
            ),

            //donut flavor
            Text(
              donutFlavor,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),

            const SizedBox(
              height: 4,
            ),

            Text(
              "Dunkins",
              style: TextStyle(color: Colors.grey[700]),
            ),

            const SizedBox(
              height: 4,
            ),

            //love icon + add button
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //love icon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
                  //plus button
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
