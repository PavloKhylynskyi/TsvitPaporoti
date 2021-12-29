import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/components/menu.dart';
import 'package:tsvit_paporoti/constants/constants.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      drawer: const Menu(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: const ItemBlogCard(),
      padding: const EdgeInsets.all(16.0),
    );
  }
}

class ItemBlogCard extends StatelessWidget {
  const ItemBlogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kGreyColor),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      '02',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ЛИП',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                height: 60,
                width: 60,
                color: const Color(0xFF276658),
                alignment: Alignment.center,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Row(
                  children: const [
                    Icon(Icons.comment),
                    Text('0'),
                  ],
                ),
              )
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Термін придатності мила',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Час читання: ',
                          style: TextStyle(color: Colors.grey),
                        ),
                        TextSpan(text: '336'),
                      ],
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                      'Тут ви можете дізнатися про особливості натурального мила, термін придатності та що на нього впливає'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
