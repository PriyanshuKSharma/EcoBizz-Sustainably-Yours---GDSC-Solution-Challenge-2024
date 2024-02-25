import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabTapped;
  final double icoSize;
  final int duration = 200;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTabTapped,
    required this.icoSize,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        canvasColor: Colors.transparent,
      ),
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 80, sigmaY: 80),
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                  width: 0.0,
                ),
              ),
            ),
            child: BottomNavigationBar(
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                currentIndex: selectedIndex,
                onTap: onTabTapped,
                items: [
                  BottomNavigationBarItem(
                    icon: TweenAnimationBuilder(
                      tween: ColorTween(
                        begin: selectedIndex == 0
                            ? Colors.black.withOpacity(0.2)
                            : const Color(0xFF2F4858),
                        end: selectedIndex == 0
                            ? const Color(0xFF2F4858)
                            : Colors.black.withOpacity(0.2),
                      ),
                      duration: Duration(milliseconds: duration),
                      builder:
                          (BuildContext context, Color? color, Widget? child) {
                        return SizedBox(
                          width: icoSize, // set width
                          height: icoSize, // set height
                          child: SvgPicture.asset(
                            "assets/icons/home.svg",
                            color: color,
                          ),
                        );
                      },
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: TweenAnimationBuilder(
                      tween: ColorTween(
                        begin: selectedIndex == 1
                            ? Colors.black.withOpacity(0.2)
                            : const Color(0xFF2F4858),
                        end: selectedIndex == 1
                            ? const Color(0xFF2F4858)
                            : Colors.black.withOpacity(0.2),
                      ),
                      duration: Duration(milliseconds: duration),
                      builder:
                          (BuildContext context, Color? color, Widget? child) {
                        return SizedBox(
                          width: icoSize, // set width
                          height: icoSize, // set height
                          child: SvgPicture.asset(
                            "assets/icons/search.svg",
                            color: color,
                          ),
                        );
                      },
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: TweenAnimationBuilder(
                      tween: ColorTween(
                        begin: selectedIndex == 2
                            ? Colors.black.withOpacity(0.2)
                            : const Color(0xFF2F4858),
                        end: selectedIndex == 2
                            ? const Color(0xFF2F4858)
                            : Colors.black.withOpacity(0.2),
                      ),
                      duration: Duration(milliseconds: duration),
                      builder:
                          (BuildContext context, Color? color, Widget? child) {
                        return SizedBox(
                          width: icoSize, // set width
                          height: icoSize, // set height
                          child: SvgPicture.asset(
                            "assets/icons/fav.svg",
                            color: color,
                          ),
                        );
                      },
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: TweenAnimationBuilder(
                      tween: ColorTween(
                        begin: selectedIndex == 3
                            ? Colors.black.withOpacity(0.2)
                            : const Color(0xFF2F4858),
                        end: selectedIndex == 3
                            ? const Color(0xFF2F4858)
                            : Colors.black.withOpacity(0.2),
                      ),
                      duration: Duration(milliseconds: duration),
                      builder:
                          (BuildContext context, Color? color, Widget? child) {
                        return SizedBox(
                          width: icoSize, // set width
                          height: icoSize, // set height
                          child: SvgPicture.asset(
                            "assets/icons/cart.svg",
                            color: color,
                          ),
                        );
                      },
                    ),
                    label: '',
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
