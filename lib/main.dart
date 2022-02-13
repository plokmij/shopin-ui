import 'package:flutter/material.dart';
import 'package:shopin_ui/widgets/bottom_nav_bar.dart';
import 'package:shopin_ui/widgets/carousel.dart';
import 'package:shopin_ui/widgets/menu_row.dart';
import 'package:shopin_ui/widgets/new_arrivals_section.dart';
import 'package:shopin_ui/widgets/shopin_header.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xff7631ff),
        buttonTheme: const ButtonThemeData(
          buttonColor: Color(0xff7631ff),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          unselectedItemColor: Colors.black54,
          selectedItemColor: Color(0xff7631ff),
        ),
      ),
      title: 'Shopin',
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: AlignmentDirectional.center,
            children: const [
              ShopinHeader(),
              Positioned(
                bottom: -70,
                child: Carousel(),
              ),
            ],
          ),
          const SizedBox(
            height: 90,
          ),
          const MenuRow(),
          const SizedBox(
            height: 20,
          ),
          const Expanded(
            flex: 5,
            child: NewArrivalsSection(),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
