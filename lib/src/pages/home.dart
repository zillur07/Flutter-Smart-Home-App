import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:smart_home_app/src/pages/home_page.dart';
import 'package:smart_home_app/src/pages/power_user.dart';
import 'package:smart_home_app/src/widgets/hex_color.dart';

import '../controllers/home_controller.dart';
import '../widgets/render_svg.dart';

class Home extends StatelessWidget {
  List<Widget> _buildScreens() {
    return [HomePage(), PowerUser(), HomePage(), PowerUser()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(EvaIcons.home),
        title: ("Home"),
        activeColorPrimary: HexColor('#ffffff'),
        activeColorSecondary: HexColor('#4C7380'),
        inactiveColorPrimary: CupertinoColors.white,
        inactiveColorSecondary: Colors.red,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(EvaIcons.dropletOff),
        title: ("Smart"),
        activeColorPrimary: HexColor('#ffffff'),
        activeColorSecondary: HexColor('#4C7380'),
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("Profile"),
        activeColorPrimary: HexColor('#ffffff'),
        activeColorSecondary: HexColor('#4C7380'),
        inactiveColorPrimary: CupertinoColors.white,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.settings),
        title: ("About"),
        activeColorPrimary: HexColor('#ffffff'),
        activeColorSecondary: HexColor('#4C7380'),
        inactiveColorPrimary: CupertinoColors.white,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;
    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: HexColor('#4C7380'), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style10, // Choose the nav bar style with this property.
    );
  }
}
