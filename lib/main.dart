// import 'package:design_first_1/components/bottom_nav_bar.dart';
import 'package:design_first_1/components/bottom_nav_bar.dart';
import 'package:design_first_1/pages/cart_page.dart';
import 'package:design_first_1/pages/favorites_page.dart';
import 'package:design_first_1/pages/home_page.dart';
import 'package:design_first_1/pages/profile_page.dart';
// import 'package:design_first_1/pages/profile_page.dart';
import 'package:design_first_1/pages/search_page.dart';
import 'package:design_first_1/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
import 'package:animations/animations.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final icoSize = 24.0;
  int _selectedIndex = 0;
  int _profIndex = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const SearchPage(),
    const FavPage(),
    const CartPage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _profIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Padding(
            padding: const EdgeInsets.only(left: 11.0),
            child: Text(
              'EcoBizz',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.green.shade400,
                  fontFamily: 'Panton Narrow'),
            ),
          ),
          actions: [
            IconButton(
              icon: _profIndex == 4
                  ? SvgPicture.asset("assets/icons/back3.svg",
                      height: icoSize, width: icoSize)
                  : SvgPicture.asset("assets/icons/settings.svg",
                      height: icoSize, width: icoSize),
              onPressed: () {
                setState(() {
                  if (_profIndex == 4) {
                    _profIndex = 0;
                  } else {
                    _profIndex = 4;
                  }
                });
              },
            ),
            const SizedBox(width: 15)
          ],
        ),
        body: _profIndex == 4
            ? PageTransitionSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (child, animation, secondaryAnimation) =>
                    (FadeThroughTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      child: child,
                    )),
                child: const ProfilePage())
            : PageTransitionSwitcher(
                duration: const Duration(milliseconds: 250),
                transitionBuilder: (child, animation, secondaryAnimation) =>
                    (FadeThroughTransition(
                      animation: animation,
                      secondaryAnimation: secondaryAnimation,
                      child: child,
                    )),
                child: _pages[_selectedIndex]),
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onTabTapped: onTabTapped,
          icoSize: icoSize,
        ),
      ),
    );
  }
}
