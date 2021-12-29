import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/constants/constants.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gallery(),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Мило Грація',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
                ),
                Row(
                  children: [
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
                    const SizedBox(width: 15),
                    const Text(
                      '1 відгук',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                    const VerticalDivider(),
                    TextButton(
                      onPressed: () {
                        _buildDialog(context);
                      },
                      child: const Text(
                        'Написати відгук',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                      style: TextButton.styleFrom(
                        primary: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Виробник:',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Артикул:',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Наявність:',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Цвіт папороті',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'graciya_mylo',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'В наявності',
                          style: TextStyle(
                              color: Colors.green, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '55,00\$',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const ItemCounter(),
                      const SizedBox(width: 10),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.shopping_cart),
                            Text('В корзину'),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: const BeveledRectangleBorder(),
                          primary: kPrimaryColor,
                          elevation: 0,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            size: 15,
                          ),
                          color: Colors.black,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: kGreyColor),
                        ),
                        height: 36,
                        width: 36,
                      ),
                    ],
                  ),
                ],
              ),
              color: const Color(0xFFF5F5F5),
            ),
            const Tabs(),
          ],
        ),
      ),
    );
  }

  void _buildDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Container(
            height: 500,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Ваше ім\'я'),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const TextField(
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kGreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kGreyColor),
                      ),
                    ),
                  ),
                  width: 200,
                ),
                const Text('Ваш відгук'),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const TextField(
                    maxLines: 15,
                  ),
                  width: 200,
                ),
              ],
            ),
          ),
        ),
      );
}

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
              shape: RoundedRectangleBorder(),
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
    return Container(
      child: Column(
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
      ),
    );
  }
}
