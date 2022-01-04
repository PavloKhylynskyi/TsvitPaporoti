import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  final String description;

  const Description({Key? key, required this.description}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  bool isReadMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Опис',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        const Divider(),
        Text(
          widget.description,
          maxLines: (isReadMore) ? null : 3,
          overflow: (isReadMore) ? TextOverflow.visible : TextOverflow.ellipsis,
          style: const TextStyle(fontWeight: FontWeight.w300),
        ),
        Align(
          child: TextButton(
            onPressed: () {
              setState(() {
                isReadMore = !isReadMore;
              });
            },
            child: Text(
              (isReadMore) ? 'Менше' : 'Більше',
              style: const TextStyle(fontWeight: FontWeight.w300),
            ),
            style: TextButton.styleFrom(
              primary: Colors.green,
              shape: const RoundedRectangleBorder(),
            ),
          ),
          alignment: Alignment.centerRight,
        ),
      ],
    );
  }
}
