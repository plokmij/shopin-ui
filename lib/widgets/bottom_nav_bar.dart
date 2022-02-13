import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffeaeaea),
      ),
      height: kBottomNavigationBarHeight + 20,
      //padding: const EdgeInsets.symmetric(vertical: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(21), topRight: Radius.circular(21)),
        child: BottomNavigationBar(
          elevation: 0,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          iconSize: 30,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.rss),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.shoppingOutline),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.messageProcessingOutline),
              label: 'Message',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined,),
              label: 'User',
            ),
          ],
        ),
      ),
    );
  }
}
