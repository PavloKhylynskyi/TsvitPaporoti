import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  final List<String> images;

  const Gallery({
    Key? key,
    required this.images,
  }) : super(key: key);

  @override
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Image.asset(widget.images[currentIndex]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              widget.images.length,
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
                            image: AssetImage(widget.images[index]),
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
