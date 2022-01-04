import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/item_card.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/components/menu.dart';
import 'package:tsvit_paporoti/constants/prooducts.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      drawer: const Menu(),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: ItemCard(product: Products.items[index]),
      ),
      itemCount: Products.items.length,
      padding: const EdgeInsets.only(top: 10.0),
    );
  }
}
