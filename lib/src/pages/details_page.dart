import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:smart_home_app/src/widgets/render_img.dart';
import 'package:smart_home_app/src/widgets/render_svg.dart';
import '../controllers/smart_home_data.dart';
import '../widgets/Ktext.dart';
import '../widgets/hex_color.dart';
import 'package:another_xlider/models/handler.dart';
import 'package:another_xlider/models/handler_animation.dart';
import 'package:another_xlider/models/hatch_mark.dart';

import 'package:another_xlider/models/ignore_steps.dart';
import 'package:another_xlider/models/slider_step.dart';
import 'package:another_xlider/models/tooltip/tooltip.dart';

import 'package:another_xlider/widgets/sized_box.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:another_xlider/another_xlider.dart';

class DetailsPage extends StatefulWidget {
  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  double _lv4 = 0;
  double _uv4 = 2500;
  bool positive = false;
  bool loading = false;

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
                              InkWell(
                                onTap: () {
                                  Get.back();
                                },
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15, top: 8),
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
                                      fontSize: 23,
                                      color: Colors.white,
                                    ),
                                  ),
                                  RenderImg(
                                    path: 'bg_lamp.png',
                                    fit: BoxFit.cover,
                                    width: 120,
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
                  bottom: 5,
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
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: RenderSvg(
                                    path: 'off_light',
                                    height: 45,
                                  ),
                                )),
                            Expanded(
                              flex: 13,
                              child: _hatchMarkWithLabels(),
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 5,
                                  ),
                                  child: RenderSvg(
                                    path: 'on_light',
                                    height: 30,
                                  ),
                                )),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Divider(
                            color: Colors.white60,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            children: [
                              KText(
                                text: 'Usages',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              KText(
                                text: 'Use Today',
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.white,
                              ),
                              KText(
                                text: '50 watt',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              KText(
                                text: 'Use Week',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                              KText(
                                text: '500 Kwh',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              KText(
                                text: 'Use Month',
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                              KText(
                                text: '5000 kwh',
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ],
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
            flex: 8,
            child: SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: HexColor('#D8E4E8'),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(40)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                        right: 2,
                      ),
                      child: Row(
                        children: [
                          KText(
                            text: 'Scheule ',
                            fontSize: 18,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: HexColor('#4C7380'),
                                borderRadius: BorderRadius.circular(3)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              child: KText(
                                text: '3',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Card(
                              child: Icon(
                                Icons.add,
                                size: 32,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.builder(
                      physics: BouncingScrollPhysics(),
                      itemCount: smartModel.length,
                      shrinkWrap: true,
                      primary: false,
                      itemBuilder: (BuildContext context, int index) {
                        final item = smartModel[index];
                        return Container(
                          margin: EdgeInsets.only(
                            left: 15,
                            right: 15,
                            bottom: 12,
                          ),
                          height: 110,
                          width: Get.width,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        KText(
                                          text: '${item['title']}',
                                          fontSize: 15,
                                        ),
                                        KText(
                                          text:
                                              '${item['category']}  | Tue Thu',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ],
                                    ),
                                    // RenderSvg(path: 'on_icon')

                                    AnimatedToggleSwitch<bool>.dual(
                                      current: positive,
                                      first: false,
                                      second: true,
                                      dif: 10.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 3.0,
                                      height: 26,
                                      indicatorSize: Size(30, 20),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black26,
                                          spreadRadius: 1,
                                          blurRadius: 2,
                                          offset: Offset(0, .5),
                                        ),
                                      ],
                                      onChanged: (b) {
                                        setState(() => positive = b);
                                        return Future.delayed(
                                            Duration(seconds: 1));
                                      },
                                      colorBuilder: (b) =>
                                          b ? Colors.yellow[900] : Colors.teal,
                                      iconBuilder: (value) => value
                                          ? Icon(
                                              Icons.coronavirus_rounded,
                                              size: 19,
                                              color: Colors.white,
                                            )
                                          : Icon(
                                              Icons.tag_faces_rounded,
                                              size: 19,
                                              color: HexColor('#ffffff'),
                                            ),
                                      textBuilder: (value) => value
                                          ? Center(
                                              child: KText(
                                                text: 'ON',
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            )
                                          : Center(
                                              child: KText(
                                                  text: 'OFF',
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  children: [
                                    RenderSvg(
                                      path: '${item['image']}',
                                      height: 45,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                        right: 57,
                                      ),
                                      child: Column(
                                        children: [
                                          KText(
                                            text: 'from',
                                            fontWeight: FontWeight.w400,
                                          ),
                                          KText(
                                            text: '8 pm',
                                            fontSize: 16,
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: 40,
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        KText(
                                          text: 'to',
                                          fontWeight: FontWeight.w400,
                                        ),
                                        KText(
                                          text: '8 am',
                                          fontSize: 16,
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      height: 40,
                                      width: 1,
                                      color: Colors.blueGrey,
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RenderSvg(
                                          path: 'delete',
                                          height: 18,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RenderSvg(
                                          path: 'edit',
                                          height: 18,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _hatchMarkWithLabels() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 2,
        right: 2,
      ),
      child: ListTile(
        subtitle: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: FlutterSlider(
                key: Key('3343'),
                values: [_lv4, _uv4],
                touchSize: 20.0,
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
                    transform: Matrix4.translationValues(0, 10, 0),
                  ),
                  density: 0.5,
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
                step: FlutterSliderStep(step: 80),
                jump: true,
                onDragging: (_handlerIndex, _lowerValue, _upperValue) {
                  setState(() {
                    _lv4 = _lowerValue;
                    _uv4 = _upperValue;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
