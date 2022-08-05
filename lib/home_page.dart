import 'package:flowers_ui/utils/flower_tile.dart';
import 'package:flowers_ui/utils/flower_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List flowerType = [
    [
      'Flower1',
      true,
    ],
    [
      'Flower2',
      false,
    ],
    [
      'Flower3',
      false,
    ],
    [
      'Flower3',
      false,
    ],
  ];
  void flowerTypeSelected(int index) {
    setState(() {
      for (int i = 0; i < flowerType.length; i++) {
        flowerType[i][1] = false;
      }
      flowerType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Find the best Flowers for you",
              style: GoogleFonts.bebasNeue(fontSize: 56),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Find your Flowers..',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: flowerType.length,
              itemBuilder: ((context, index) {
                return Flower_Type(
                  flowerType: flowerType[index][0],
                  isSelected: flowerType[index][1],
                  onTap: () {
                    flowerTypeSelected(index);
                  },
                );
              }),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                FlowerTile(
                  flowerImagePath: 'lib/images/image3.jpg',
                  flowerName: 'Flower1',
                  flowerPrice: '4.20',
                  flowerExplanation: 'Amazing flowers',
                ),
                FlowerTile(
                  flowerImagePath: 'lib/images/image3.jpg',
                  flowerName: 'Flower2',
                  flowerPrice: '4.20',
                  flowerExplanation: 'Amazing flowers',
                ),
                FlowerTile(
                  flowerImagePath: 'lib/images/image3.jpg',
                  flowerName: 'Flower3',
                  flowerPrice: '4.20',
                  flowerExplanation: 'Amazing flowers',
                ),
                FlowerTile(
                  flowerImagePath: 'lib/images/image3.jpg',
                  flowerName: 'Flower4',
                  flowerPrice: '4.20',
                  flowerExplanation: 'Amazing flowers',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
