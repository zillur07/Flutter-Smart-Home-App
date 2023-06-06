import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:smart_home_app/src/widgets/Ktext.dart';
import '../widgets/hex_color.dart';

class PowerUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
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
                top: 100,
                child: Container(
                  height: Get.height / 3,
                  decoration: BoxDecoration(
                      color: HexColor('#4C7380'),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(55))),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: <Widget>[
                            Icon(EvaIcons.radioOutline),
                            SizedBox(width: 10.0),
                            KText(
                              text: 'ussa',
                              fontSize: 50,
                              color: Colors.red,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: Get.height / 1.5,
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
