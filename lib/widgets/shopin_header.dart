import 'package:flutter/material.dart';

class ShopinHeader extends StatelessWidget {
  const ShopinHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height / 4;
    return Container(
      height: height,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(18),
          bottomRight: Radius.circular(18),
        ),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildLogo(),
                const SizedBox(
                  width: 40,
                ),
                Flexible(
                  child: _buildSearchTextField(),
                ),
                const SizedBox(
                  width: 10,
                ),
                _buildIcon(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return const Text(
      "SHOPIN",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 21,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 12,
        ),
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        fillColor: const Color(0xffeaeaea),
        filled: true,
      ),
    );
  }

  Widget _buildIcon() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: const BoxDecoration(
        color: Color(0xffeaeaea),
        borderRadius: BorderRadius.all(
          Radius.circular(9),
        ),
      ),
      child: const Icon(Icons.camera_alt_outlined),
    );
  }
}
