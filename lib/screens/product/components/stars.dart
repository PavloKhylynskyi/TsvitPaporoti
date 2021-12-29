import 'package:flutter/material.dart';

class Stars extends StatefulWidget {
  const Stars({Key? key}) : super(key: key);

  @override
  _StarsState createState() => _StarsState();
}

class _StarsState extends State<Stars> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          5,
          (index) => GestureDetector(
            child: Icon(
              Icons.star,
              size: 30,
              color: (index < _value) ? Colors.amber : Colors.grey,
            ),
            onTap: () {
              setState(
                () {
                  _value = index + 1;
                },
              );
            },
          ),
        ));
  }
}
