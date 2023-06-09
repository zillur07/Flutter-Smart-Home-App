import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/hex_color.dart';

class PowerUser2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      height: Get.height / 3,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: Get.height / 3,
                      decoration: BoxDecoration(
                        color: HexColor('#4C7380'),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                child: Container(
                  height: Get.height / 3,
                  decoration: BoxDecoration(
                      color: HexColor('#4C7380'),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(55))),
                ),
              ),
            ],
          ),
          Container(
            height: Get.height / 1.7,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(55)),
            ),
          )
        ],
      ),
    );
  }
}
