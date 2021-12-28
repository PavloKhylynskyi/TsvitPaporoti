import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/navigation/navigation.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({Key? key}) : super(key: key);

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
                            Container(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite,
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
            border: Border.all(color: kGreyColor),
          ),
        ),
      ),
      onTap: () {
        Navigator.pushNamed(context, Screens.product);
      },
    );
  }
}
