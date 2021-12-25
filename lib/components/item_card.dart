import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.3,
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                child: Image.asset('assets/images/soap.jpg'),
                padding: const EdgeInsets.all(5.0),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    const Text('Мило Вівсяне'),
                    Divider(),
                    const Text(
                      '55,00 \$',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              const Icon(Icons.shopping_cart),
                              const Text('В корзину'),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: const BeveledRectangleBorder(),
                              primary: Colors.green),
                        ),
                        Container(
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.favorite,
                            ),
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                        ),
                      ],
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
        margin: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
      ),
    );
  }
}
