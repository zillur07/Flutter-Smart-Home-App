import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:smart_home_app/src/widgets/render_img.dart';
import 'package:smart_home_app/src/widgets/render_svg.dart';
import '../widgets/Ktext.dart';
import '../widgets/hex_color.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/handler_animation.dart';
import 'package:another_xlider/models/hatch_mark.dart';

import 'package:another_xlider/models/ignore_steps.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/models/tooltip/tooltip.dart';

import 'package:another_xlider/widgets/sized_box.dart';

import 'package:another_xlider/another_xlider.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  // double _lowerValue = 50;

  // double _lv = 50.0;
  // double _uv = 250.0;

  // double _lv1 = 1000.0;
  // double _uv1 = 15000.0;

  // double _lv2 = 3000.0;
  // double _uv2 = 17000.0;

  // double _lv3 = 3000;
  // double _uv3 = 3500;

  double _lv4 = 0;
  double _uv4 = 2500;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 10,
            child: Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      decoration: BoxDecoration(
                        color: HexColor('#4C7380'),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: 15, top: 8),
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 17,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: KText(
                                      text: 'Back',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 8),
                                child: KText(
                                  text: 'Dining Room',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 5),
                                child: RenderSvg(path: 'off_icon'),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 15, top: 5),
                                child: RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 50),
                                    children: [
                                      TextSpan(
                                        text: '80',
                                      ),
                                      WidgetSpan(
                                        child: Transform.translate(
                                          offset: const Offset(0.0, 0.0),
                                          child: Text(
                                            ' %',
                                            style: TextStyle(
                                                fontSize: 30,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: KText(
                                  text: 'Brightness',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 15,
                                ),
                                child: KText(
                                  text: 'Insensity',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 45,
                                      top: 25,
                                    ),
                                    child: KText(
                                      textAlign: TextAlign.start,
                                      text: 'Lamp',
                                      fontSize: 28,
                                      color: Colors.white,
                                    ),
                                  ),
                                  RenderImg(
                                    path: 'bg_lamp.png',
                                    fit: BoxFit.cover,
                                    width: 100,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    // Expanded(
                    //   flex: 1,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       color: HexColor('#4C7380'),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),

                // Container(
                //   height: 50,
                //   width: 200,
                //   child: _singleSlider(),
                // )
                Positioned(
                  bottom: 130,
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
                            Expanded(flex: 1, child: Icon(Icons.light)),
                            Expanded(
                              flex: 12,
                              child: _hatchMarkWithLabels(),
                            ),
                            Expanded(flex: 1, child: Icon(Icons.light)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Divider(
                            color: Colors.white60,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
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

  _hatchMarkWithLabels() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: FlutterSlider(
              key: Key('3343'),
              values: [_lv4, _uv4],
              touchSize: 50.0,
              handlerAnimation: FlutterSliderHandlerAnimation(
                  reverseCurve: Curves.bounceOut,
                  curve: Curves.bounceIn,
                  duration: Duration(milliseconds: 500),
                  scale: 1.5),
              rangeSlider: true,
              ignoreSteps: [
                FlutterSliderIgnoreSteps(from: 500, to: 1000),
              ],
              hatchMark: FlutterSliderHatchMark(
                displayLines: true,
                linesDistanceFromTrackBar: 10,
                labelBox: FlutterSliderSizedBox(
                  width: 40,
                  height: 20,
                  foregroundDecoration: BoxDecoration(color: Colors.white),
                  transform: Matrix4.translationValues(0, 30, 0),
                ),
                density: 0.5,
                labels: [],
              ),
              rightHandler: FlutterSliderHandler(
                decoration: BoxDecoration(),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(3),
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor('#9A7265'),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              tooltip: FlutterSliderTooltip(
                alwaysShowTooltip: false,
              ),
              max: 4000,
              min: 0,
              step: FlutterSliderStep(step: 100),
              jump: true,
              onDragging: (_handlerIndex, _lowerValue, _upperValue) {
                setState(() {
                  _lv4 = _lowerValue;
                  _uv4 = _upperValue;
                });
              },
            )),
          ],
        ),
      ),
    );
  }
}
