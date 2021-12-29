import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/components/menu.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      drawer: Menu(),
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: const [
        Text(
          'КОНТАКТИ',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(height: 8),
        Text(
          'Адреса',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        Text(
          'Львівська область с. Оселя вул. Відпочинкова 1',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 8),
        Text(
          'Телефон',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        Text(
          '+38 (097) 973 40 10',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 8),
        Text(
          'Графік роботи',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        Text(
          'Пн - Пт з 9:00 до 18:00',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
