import 'package:flutter/material.dart';

class NewArrivalsSection extends StatelessWidget {
  const NewArrivalsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.9;
    double rightPadding = (MediaQuery.of(context).size.width * 0.1) / 2;
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xfff4f4f4),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 12,
      ),
      child: Column(
        children: [
          SizedBox(
            width: width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New Arrivals',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Center(
            child: SizedBox(
              height: 222,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: rightPadding,
                  ),
                  _buildNewArrivalItem(
                    itemName: 'Nike Air Max 2090',
                    imageUrl: '1',
                    numOfColors: 7,
                    price: 150,
                  ),
                  _buildNewArrivalItem(
                    itemName: 'Nike React Vision',
                    imageUrl: '2',
                    numOfColors: 4,
                    price: 140,
                  ),
                  _buildNewArrivalItem(
                    itemName: 'Nike Air Max 2090',
                    imageUrl: '3',
                    numOfColors: 7,
                    price: 150,
                  ),
                  _buildNewArrivalItem(
                    itemName: 'Nike Air Max 2090',
                    imageUrl: '1',
                    numOfColors: 7,
                    price: 120,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewArrivalItem(
      {required String itemName,
      required String imageUrl,
      required int numOfColors,
      required double price}) {
    return Container(
      height: 282,
      width: 140,
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  color: const Color(0xfff4f4f4),
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/$imageUrl.png',
                  ),
                ),
              ),
              const Positioned(
                top: 8,
                right: 8,
                child: Icon(Icons.favorite_outline),
              )
            ],
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            itemName,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 13,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xfff4f4f4),
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
            child: Text(
              '${numOfColors.toString()} Colors',
              style: const TextStyle(
                fontSize: 11.5,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${price.toString()}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    width: 0.5,
                    color: Colors.black.withOpacity(0.2),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
