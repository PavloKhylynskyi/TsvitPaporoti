import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/models/product.dart';
import 'package:tsvit_paporoti/screens/product/components/description.dart';
import 'package:tsvit_paporoti/screens/product/components/gallery.dart';
import 'package:tsvit_paporoti/screens/product/components/item_counter.dart';
import 'package:tsvit_paporoti/screens/product/components/recently_reviewed.dart';
import 'package:tsvit_paporoti/screens/product/components/response_dialog.dart';
import 'package:tsvit_paporoti/screens/product/components/responses.dart';
import 'package:tsvit_paporoti/screens/product/components/tabs.dart';

class ProductScreen extends StatelessWidget {
  final Product product;

  const ProductScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      body: _Body(product: product),
    );
  }
}

class _Body extends StatelessWidget {
  final Product product;

  const _Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gallery(
              images: product.images,
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w300),
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
                    Text(
                      '${product.responses.length} відгуків',
                      style: const TextStyle(fontWeight: FontWeight.w300),
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
                      children: [
                        const Text(
                          'Цвіт папороті',
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          product.term,
                          style: TextStyle(fontWeight: FontWeight.w300),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          product.availability
                              ? 'В наявності'
                              : 'Немає в наявності',
                          style: TextStyle(
                              color: product.availability
                                  ? Colors.green
                                  : Colors.red,
                              fontWeight: FontWeight.w300),
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
                  Text(
                    '${product.price} ₴',
                    style: const TextStyle(
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
                          ),
                          color: Colors.black,
                          padding: EdgeInsets.zero,
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
            // Tabs(
            //   description: product.description,
            //   responses: product.responses,
            // ),
            Description(description: product.description),
            (product.responses.isNotEmpty)
                ? Responses(
                    responses: product.responses,
                  )
                : const SizedBox(),
            const SizedBox(height: 15.0),
            const RecentlyReviewed(),
          ],
        ),
      ),
    );
  }

  void _buildDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => const Dialog(
          shape: BeveledRectangleBorder(),
          child: ResponseDialog(),
        ),
      );
}
