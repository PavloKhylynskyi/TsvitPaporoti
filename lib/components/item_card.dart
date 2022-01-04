import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/models/product.dart';
import 'package:tsvit_paporoti/screens/product/product_screen.dart';

class ItemCard extends StatelessWidget {
  final Product product;

  const ItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  void press(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductScreen(product: product),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: AspectRatio(
          aspectRatio: 2.4,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    child: Image.asset(product.images[0]),
                    padding: const EdgeInsets.all(5.0),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text(
                          product.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const Divider(),
                        Text(
                          '${product.price} ₴',
                          style: const TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            children: [
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
                        ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                )
              ],
            ),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              border: Border.all(color: kGreyColor),
            ),
          ),
        ),
        onTap: () => press(context));
  }
}
