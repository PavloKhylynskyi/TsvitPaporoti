import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/constants/prooducts.dart';
import 'package:tsvit_paporoti/models/product.dart';
import 'package:tsvit_paporoti/screens/product/product_screen.dart';

class RecentlyReviewed extends StatelessWidget {
  const RecentlyReviewed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Недавно переглянуті',
          style: TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        const Divider(),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: RecentlyReviewedCard(
                  product: Products.items[0],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: RecentlyReviewedCard(
                  product: Products.items[1],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: RecentlyReviewedCard(
                  product: Products.items[3],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: RecentlyReviewedCard(
                  product: Products.items[4],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: RecentlyReviewedCard(
                  product: Products.items[5],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RecentlyReviewedCard extends StatelessWidget {
  final Product product;

  const RecentlyReviewedCard({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(border: Border.all(color: kGreyColor)),
        padding: const EdgeInsets.all(10.0),
        width: 180,
        height: 180,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(product.images[0]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.w300),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '${product.price} ₴',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(product: product),
          ),
        );
      },
    );
  }
}
