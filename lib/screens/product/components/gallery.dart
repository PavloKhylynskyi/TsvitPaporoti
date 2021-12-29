import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final List<String> image = [
    'assets/images/gratsiia_1.jpg',
    'assets/images/gratsiia_2.jpg',
    'assets/images/gratsiia_3.jpg',
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Image.asset(image[currentIndex]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              image.length,
              (index) => Container(
                height: 100,
                width: 105,
                padding: const EdgeInsets.only(right: 5.0),
                child: GestureDetector(
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(image[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        color: (currentIndex == index)
                            ? Colors.white.withOpacity(0)
                            : Colors.white.withOpacity(0.5),
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
