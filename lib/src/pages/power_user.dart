import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import '../widgets/Ktext.dart';
import '../widgets/hex_color.dart';

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
                        )
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
