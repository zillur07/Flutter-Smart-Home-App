import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_home_app/src/widgets/grap.dart';

import '../widgets/Ktext.dart';
import '../widgets/hex_color.dart';
import '../widgets/render_svg.dart';

class PowerUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: Get.width,
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: HexColor('#4C7380'),
                            ),
                          ),
                          Container(
                            height: 90,
                            width: Get.width,
                            margin: EdgeInsets.zero,
                            padding: EdgeInsets.zero,
                            decoration: BoxDecoration(
                              color: HexColor('#ffffff'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: Get.width,
                        decoration: BoxDecoration(
                          color: HexColor('#4C7380'),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 26,
                  left: 15,
                  child: Row(
                    children: [
                      KText(
                        text: 'Power Usage',
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   top: 60,
                //   left: 15,
                //   child: Row(
                //     children: [
                //       KText(
                //         text: 'Usage this Week ',
                //         fontSize: 16,
                //         color: Colors.white,
                //       ),
                //     ],
                //   ),
                // ),
                // Positioned(
                //   top: 60,
                //   left: 15,
                //   child: Row(
                //     children: [
                //       KText(
                //         text: '2500',
                //         fontSize: 16,
                //         color: Colors.white,
                //       ),
                //     ],
                //   ),
                // ),
                Positioned(
                  top: 29,
                  right: 15,
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RenderSvg(
                        path: 'persent',
                        color: HexColor('#507682'),
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        margin: EdgeInsets.zero,
                        width: Get.width,
                        decoration: BoxDecoration(
                            color: HexColor('#4C7380'),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(40))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 220,
                              width: Get.width,
                              child: LineChartSample1(),
                            )
                          ],
                        ),
                      ),
                    ],
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
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 15,
                  ),
                  child: Column(
                    children: [
                      ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        primary: false,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Container(
                              height: 95,
                              width: Get.width,
                              decoration: BoxDecoration(
                                color: HexColor('#D8E4E8'),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    height: 65,
                                    width: 65,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: RenderSvg(
                                        path: 'light',
                                        width: 40,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      KText(
                                        text: 'Lamp',
                                        fontSize: 14,
                                      ),
                                      KText(
                                        text: 'Kitchen - Bedroom',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      KText(
                                        text: '8 Unit  |  12 Jam',
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.blueGrey.withOpacity(0.7),
                                      )
                                    ],
                                  ),
                                  Spacer(),
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 8,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Row(
                                          children: [
                                            KText(
                                              text: '1000',
                                              color: Colors.blueGrey,
                                            ),
                                            KText(
                                              text: 'Kw/h',
                                              fontWeight: FontWeight.w300,
                                              color: Colors.blueGrey,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            RenderSvg(
                                              path: 'array_down',
                                              height: 18,
                                              color: HexColor('#A78980'),
                                            ),
                                            KText(
                                              text: ' -11.2%',
                                              color: HexColor('#A78980'),
                                              fontWeight: FontWeight.w400,
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 18,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
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
