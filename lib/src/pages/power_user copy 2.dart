import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/Ktext.dart';
import '../widgets/hex_color.dart';

class PowerUser3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // DateTime dateTime;
    // int milliseconds = 2014;
    // int milliseconds2 = 2015;
    // int milliseconds3 = 2016;
    // int milliseconds4 = 2017;
    // int milliseconds5 = 2018;
    // final List<SalesData> chartData = [
    //   SalesData(DateTime.fromMillisecondsSinceEpoch(milliseconds), 10),
    //   SalesData(DateTime.fromMillisecondsSinceEpoch(milliseconds2), 28),
    //   SalesData(DateTime.fromMillisecondsSinceEpoch(milliseconds3), 34),
    //   SalesData(DateTime.fromMillisecondsSinceEpoch(milliseconds4), 15),
    //   SalesData(DateTime.fromMillisecondsSinceEpoch(milliseconds5), 40)
    // ];

    // Generate some dummy data for the cahrt

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.zero,
                        padding: EdgeInsets.zero,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          color: HexColor('#4C7380'),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  child: Container(
                    width: Get.width,
                    decoration: BoxDecoration(
                        color: HexColor('#4C7380'),
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(40))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            KText(text: 'Power Usage'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
              ),
            ),
          )
        ],
      ),
    );
  }
}

// class SalesData {
//   SalesData(this.year, this.sales);
//   final DateTime year;
//   final double sales;
// }
