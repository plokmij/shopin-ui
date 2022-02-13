import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuRow extends StatelessWidget {
  const MenuRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    return Container(
      //color: Colors.white,
      padding: const EdgeInsets.all(4),
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildMenuItem(
            icon: Icons.settings_applications_outlined,
            text: 'Category',
            color: Theme.of(context).primaryColor,
          ),
          _buildMenuItem(
            icon: MdiIcons.compare,
            text: 'Compare',
            color: const Color(0xff9547ff),
          ),
          _buildMenuItem(
            icon: Icons.android_outlined,
            text: 'Sales event',
            color: const Color(0xffa704c7),
          ),
          _buildMenuItem(
            icon: MdiIcons.sale,
            text: 'Offers',
            color: const Color(0xfffe5d32),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem(
      {required IconData icon, required String text, required Color color}) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          child: Center(
            child: Icon(
              icon,
              size: 30,
              color: color,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
