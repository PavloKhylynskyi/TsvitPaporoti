import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

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
                  children: const [
                    Text(
                      '''Зварене за рецептом Дитячого мила з'''
                      ''' додавання подрібнених квітів календули та ромашки. '''
                      '''Ароматна композиція має заспокійливий, гармонізуючий ефект.'''
                      '''\n\nДля всіх типів шкіри.\n''',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    Text(
                      '''Склад: Омилені олії оливкова, кокосова, касторова, '''
                      '''соняшникова; відвар ромашки та календули; NaOH;'''
                      ''' ефірні олії герані, меліси, кипариса.\n\nЗберігати при температурі -5-+22 °С і вологості повітря 75%.'''
                      ''' Термін придатності – 9 місяців.''',
                      style: TextStyle(fontWeight: FontWeight.w300),
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
