import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/models/response.dart';

class Tabs extends StatefulWidget {
  final String description;
  final List<Response> responses;

  const Tabs({
    Key? key,
    required this.description,
    required this.responses,
  }) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              child: TextButton(
                child: const Text(
                  'Опис',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                onPressed: () {
                  setState(() {
                    state = 0;
                  });
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  shape: const BeveledRectangleBorder(),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                child: const Text(
                  'Відгуки',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                onPressed: () {
                  setState(() {
                    state = 1;
                  });
                },
                style: TextButton.styleFrom(
                  primary: Colors.black,
                  shape: const BeveledRectangleBorder(),
                ),
              ),
            ),
          ],
        ),
        Container(
          child: (state == 0)
              ? Column(
                  children: [
                    Text(
                      widget.description,
                      style: const TextStyle(fontWeight: FontWeight.w300),
                    )
                  ],
                )
              : Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Діана, 10/04/2019',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        Row(
                          children: List.generate(
                            5,
                            (index) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '''Чудове ароматне мило, приємне у використанні. '''
                      '''Може бути як бадьорящим так і заспокійливим завдяки такому підбору трав! '''
                      '''Дуже подобається така композиція, Користуємося вашим милом, '''
                      '''пробували різні, хороша якість!''',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}
