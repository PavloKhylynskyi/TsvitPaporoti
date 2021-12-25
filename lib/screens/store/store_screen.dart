import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/item_card.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      body: _Body(),
      drawer: Drawer(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
          ItemCard(),
        ],
      ),
    );
  }
}
