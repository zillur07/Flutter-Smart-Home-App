import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_home_app/src/consts/app_colors.dart';
import 'package:smart_home_app/src/pages/details_page.dart';
import 'package:smart_home_app/src/widgets/render_img.dart';
import '../config/app_utils.dart';
import '../widgets/Ktext.dart';
import '../widgets/hex_color.dart';
import '../widgets/render_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSwitched2 = true;
  int value = 0;
  bool positive = false;
  bool loading = false;
  bool positive2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //   children: [
                        //     Stack(
                        //       children: [
                        //         RenderSvg(
                        //           path: 'home_top_cloud',
                        //           width: 80,
                        //         ),
                        //         Positioned(
                        //           top: 40            ,
                        //           child: KText(
                        //             text: 'Good Morning,',
                        //             fontSize: 20,
                        //             color: Colors.white,
                        //           ),
                        //         )
                        //       ],
                        //     ),
                        //     RenderSvg(
                        //       path: 'top_left_cloud',
                        //       width: 80,
                        //     ),
                        //   ],
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 15, left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  KText(
                                    text: 'Goood Morning,',
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  KText(text: 'Kimberly Mastrangelo')
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                right: 15,
                                top: 35,
                                bottom: 20,
                              ),
                              child: Container(
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.black54,
                                ),
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              height: Get.height / 4.6,
                              width: Get.width,
                            ),
                            Positioned(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                ),
                                child: Container(
                                  height: 166,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightgrey,
                                    borderRadius: BorderRadius.circular(
                                      25,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 15, left: 12, right: 12),
                                            child: RenderSvg(
                                              height: 60,
                                              path: 'sun_behind_cloud',
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              top: 10,
                                              left: 3,
                                              right: 3,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                KText(
                                                  text: 'May 16, 2023 10:05 am',
                                                  fontSize: 12,
                                                ),
                                                KText(
                                                  text: 'Cloudy',
                                                  fontSize: 18,
                                                ),
                                                KText(
                                                  text: 'Jakara, Indonesia',
                                                  fontSize: 12,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Row(
                                            children: [
                                              KText(
                                                text: '19$degree',
                                                fontSize: 42,
                                              ),
                                              KText(
                                                text: 'c',
                                                fontSize: 42,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 15,
                                        ),
                                        child: Divider(
                                          color: Colors.grey[500],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 5,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              height: 63,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color:
                                                      AppColors.morelightgrey),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 4,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: RenderImg(
                                                              path: 'drop.png',
                                                              height: 15,
                                                              width: 15,
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 25),
                                                            children: [
                                                              TextSpan(
                                                                text: '97',
                                                              ),
                                                              WidgetSpan(
                                                                child: Transform
                                                                    .translate(
                                                                  offset:
                                                                      const Offset(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '%',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KText(
                                                    text: 'Humadity',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 63,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color:
                                                      AppColors.morelightgrey),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 4,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(7.0),
                                                            child: RenderImg(
                                                              path: 'eye.png',
                                                              height: 15,
                                                              width: 15,
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 25),
                                                            children: [
                                                              TextSpan(
                                                                text: '7',
                                                              ),
                                                              WidgetSpan(
                                                                child: Transform
                                                                    .translate(
                                                                  offset:
                                                                      const Offset(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'km',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KText(
                                                    text: 'Visibility',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 63,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color:
                                                      AppColors.morelightgrey),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 4,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Container(
                                                          height: 35,
                                                          width: 35,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        50),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(5.0),
                                                            child: RenderImg(
                                                              path:
                                                                  'sonofoll.png',
                                                              height: 15,
                                                              width: 15,
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          text: TextSpan(
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 25),
                                                            children: [
                                                              TextSpan(
                                                                text: '3',
                                                              ),
                                                              WidgetSpan(
                                                                child: Transform
                                                                    .translate(
                                                                  offset:
                                                                      const Offset(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'km/h',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14,
                                                                        fontWeight:
                                                                            FontWeight.bold),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  KText(
                                                    text: 'NE Wind',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.w400,
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
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: RenderSvg(path: 'sun_top'),
                            ),
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
            flex: 9,
            child: Container(
              height: Get.height / 1.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        KText(
                          text: 'Rooms',
                          fontSize: 16,
                        ),
                        KText(
                          text: 'See All',
                          fontSize: 16,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 5,
                          ),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: HexColor('#D8E4E8'),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  height: 25,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    color: HexColor('#4C7380'),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                        children: [
                                          TextSpan(
                                            text: '19$degree',
                                          ),
                                          WidgetSpan(
                                            child: Transform.translate(
                                              offset: const Offset(0.0, 2.0),
                                              child: Text(
                                                'c',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: RenderImg(
                                    path: 'living-room.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Center(
                                  child: KText(
                                    text: 'Living Room',
                                    fontSize: 20,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: HexColor('#FFE266'),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 2,
                                          vertical: 3,
                                        ),
                                        child: Center(
                                          child: KText(
                                            text: '5',
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    KText(
                                      text: ' devices',
                                      color: Colors.black54,
                                      fontSize: 16,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 15,
                          ),
                          child: Container(
                            height: 200,
                            decoration: BoxDecoration(
                              color: HexColor('#D8E4E8'),
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 10,
                                    top: 10,
                                  ),
                                  height: 25,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    color: HexColor('#4C7380'),
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16),
                                        children: [
                                          TextSpan(
                                            text: '19$degree',
                                          ),
                                          WidgetSpan(
                                            child: Transform.translate(
                                              offset: const Offset(0.0, 2.0),
                                              child: Text(
                                                'c',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Center(
                                  child: RenderImg(
                                    path: 'bedroom.png',
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                                Center(
                                  child: KText(
                                    text: 'Living Room',
                                    fontSize: 20,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 25,
                                      width: 20,
                                      decoration: BoxDecoration(
                                        color: HexColor('#FFE266'),
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 2,
                                          vertical: 3,
                                        ),
                                        child: Center(
                                          child: KText(
                                            text: '8',
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                    KText(
                                      text: ' devices',
                                      color: Colors.black54,
                                      fontSize: 16,
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 15,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        KText(
                          text: 'Active',
                          fontSize: 16,
                        ),
                        KText(
                          text: 'See All',
                          fontSize: 16,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 5,
                          ),
                          child: Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: HexColor('#9A7265'),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: RenderImg(
                                        path: 'air-conditioner.png',
                                        height: 65,
                                        width: 65,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: KText(
                                            text: 'Temprature',
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18),
                                            children: [
                                              TextSpan(
                                                text: '19$degree',
                                              ),
                                              WidgetSpan(
                                                child: Transform.translate(
                                                  offset:
                                                      const Offset(0.0, 5.0),
                                                  child: Text(
                                                    'c',
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        color: Colors.white70),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 5, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          KText(
                                            text: 'AC',
                                            color: Colors.white70,
                                            fontSize: 16,
                                          ),
                                          KText(
                                            text: 'Living room',
                                            color: Colors.white70,
                                            fontSize: 12,
                                          )
                                        ],
                                      ),
                                    ),
                                    AnimatedToggleSwitch<bool>.dual(
                                      current: positive,
                                      first: false,
                                      second: true,
                                      dif: 10.0,
                                      borderColor: Colors.transparent,
                                      borderWidth: 3.0,
                                      height: 22,
                                      indicatorSize: Size(25, 16),
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
                                              size: 15,
                                              color: Colors.white,
                                            )
                                          : Icon(
                                              Icons.tag_faces_rounded,
                                              size: 15,
                                              color: HexColor('#ffffff'),
                                            ),
                                      textBuilder: (value) => value
                                          ? Center(
                                              child: KText(
                                                text: 'ON',
                                                fontSize: 9,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white,
                                              ),
                                            )
                                          : Center(
                                              child: KText(
                                                  text: 'OFF',
                                                  fontSize: 9,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            ),
                                    ),
                                    // AdvancedSwitch(
                                    //   activeColor: HexColor('#659A6E'),
                                    //   activeChild: KText(
                                    //     text: 'ON',
                                    //     color: Colors.white,
                                    //     fontSize: 13,
                                    //   ),
                                    //   inactiveChild: KText(
                                    //     text: 'OFF',
                                    //     color: Colors.white,
                                    //     fontSize: 13,
                                    //   ),
                                    //   width: 56,
                                    //   height: 23,
                                    //   controller: _controller02,
                                    // ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        flex: 1,
                        child: InkWell(
                          onTap: () {
                            Get.to(DetailsPage());
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                              right: 15,
                            ),
                            child: Container(
                              height: 150,
                              decoration: BoxDecoration(
                                  color: HexColor('#9A7265'),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 10,
                                        ),
                                        child: RenderImg(
                                          path: 'light-bulbs.png',
                                          height: 65,
                                          width: 65,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          right: 10,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 10,
                                              ),
                                              child: KText(
                                                text: 'Colour',
                                                color: Colors.white70,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            KText(
                                              text: 'White',
                                              fontSize: 18,
                                              color: Colors.white70,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5, bottom: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            KText(
                                              text: 'Lamp',
                                              color: Colors.white70,
                                              fontSize: 16,
                                            ),
                                            KText(
                                              text: 'Dining room',
                                              color: Colors.white70,
                                              fontSize: 12,
                                            )
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          AnimatedToggleSwitch<bool>.dual(
                                            current: positive2,
                                            first: false,
                                            second: true,
                                            dif: 10.0,
                                            borderColor: Colors.transparent,
                                            borderWidth: 3.0,
                                            height: 22,
                                            indicatorSize: Size(25, 16),
                                            boxShadow: const [
                                              BoxShadow(
                                                color: Colors.black26,
                                                spreadRadius: 1,
                                                blurRadius: 2,
                                                offset: Offset(0, .5),
                                              ),
                                            ],
                                            onChanged: (b) {
                                              setState(() => positive2 = b);
                                              return Future.delayed(
                                                  Duration(seconds: 1));
                                            },
                                            colorBuilder: (b) => b
                                                ? Colors.yellow[900]
                                                : Colors.teal,
                                            iconBuilder: (value) => value
                                                ? Icon(
                                                    Icons.coronavirus_rounded,
                                                    size: 15,
                                                    color: Colors.white,
                                                  )
                                                : Icon(
                                                    Icons.tag_faces_rounded,
                                                    size: 15,
                                                    color: HexColor('#ffffff'),
                                                  ),
                                            textBuilder: (value) => value
                                                ? Center(
                                                    child: KText(
                                                      text: 'ON',
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                : Center(
                                                    child: KText(
                                                        text: 'OFF',
                                                        fontSize: 9,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white),
                                                  ),
                                          ),
                                        ],
                                      ),
                                      // AdvancedSwitch(
                                      //   activeColor: HexColor('#659A6E'),
                                      //   activeChild: KText(
                                      //     text: 'ON',
                                      //     color: Colors.white,
                                      //     fontSize: 13,
                                      //   ),
                                      //   inactiveChild: KText(
                                      //     text: 'OFF',
                                      //     color: Colors.white,
                                      //     fontSize: 13,
                                      //   ),
                                      //   width: 56,
                                      //   height: 23,
                                      //   controller: _controller03,
                                      // ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Expanded(
                      //   flex: 1,
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(left: 5, right: 15),
                      //     child: Container(
                      //       height: 150,
                      //       decoration: BoxDecoration(
                      //           color: HexColor('#9A7265'),
                      //           borderRadius: BorderRadius.circular(10)),
                      //     ),
                      //   ),
                      // ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
