import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/components/menu.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/screens/blog/components/item_blog_card.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

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
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
            const Text(
              'БЛОГ',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 8),
          ] +
          List.generate(
              15,
              (index) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: ItemBlogCard(),
                  )),
    );
  }
}
