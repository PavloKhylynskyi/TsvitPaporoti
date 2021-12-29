import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/constants/constants.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({Key? key}) : super(key: key);

  @override
  _ItemCounterState createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {
  int numberOfItem = 1;
  final controller = TextEditingController(text: '1');

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 36,
          width: 36,
          child: TextButton(
            onPressed: () {
              if (int.parse(controller.text) > 1) {
                setState(() {
                  numberOfItem--;
                  controller.text = (int.parse(controller.text) - 1).toString();
                });
              }
            },
            child: const Icon(
              Icons.remove,
              size: 17,
            ),
            style: TextButton.styleFrom(
              primary: Colors.black,
              shape: const RoundedRectangleBorder(),
            ),
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: kGreyColor),
              bottom: BorderSide(color: kGreyColor),
              left: BorderSide(color: kGreyColor),
            ),
          ),
        ),
        Container(
          height: 36,
          width: 70,
          child: TextField(
            maxLength: 4,
            controller: controller,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: const InputDecoration(
              counterText: '', //hide the counterText
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: kGreyColor),
          ),
        ),
        Container(
          height: 36,
          width: 36,
          child: TextButton(
            onPressed: () {
              if (int.parse(controller.text) < 999) {
                setState(() {
                  numberOfItem++;
                  controller.text = (int.parse(controller.text) + 1).toString();
                });
              }
            },
            child: const Icon(
              Icons.add,
              size: 17,
            ),
            style: TextButton.styleFrom(
              primary: Colors.black,
              shape: const RoundedRectangleBorder(),
            ),
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(color: kGreyColor),
              bottom: BorderSide(color: kGreyColor),
              right: BorderSide(color: kGreyColor),
            ),
          ),
        ),
      ],
    );
  }
}
