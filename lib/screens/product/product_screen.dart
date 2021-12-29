import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/screens/product/components/gallery.dart';
import 'package:tsvit_paporoti/screens/product/components/item_counter.dart';
import 'package:tsvit_paporoti/screens/product/components/tabs.dart';

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
        padding: const EdgeInsets.all(16.0),
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
                    '55,00 ₴',
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
          shape: const BeveledRectangleBorder(),
          child: Container(
            height: 430,
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
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kGreyColor),
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                    ),
                  ),
                  width: 300,
                ),
                const Text('Ваш відгук'),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: const TextField(
                    textCapitalization: TextCapitalization.sentences,
                    maxLines: 10,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kGreyColor),
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: kGreyColor),
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                    ),
                  ),
                  width: 300,
                ),
              ],
            ),
          ),
        ),
      );
}
