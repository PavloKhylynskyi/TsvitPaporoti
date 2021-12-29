import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/components/main_app_bar.dart';
import 'package:tsvit_paporoti/components/menu.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildMainAppBar(),
      drawer: const Menu(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            Text(
              'ПРО НАС',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              '''Натуральне екологічно чисте мило "Цвіт папороті" зварене гарячим '''
              '''способом з жирних та ефірних олій, відварів трав та лужного розчину. '''
              '''Не містить SLS, парафіну та інших продуктів нафтопереробки, '''
              '''жирів тваринного походження, синтетичних барвників та ароматизаторів, консервантів. '''
              '''Мило повністю натуральне, вегетаріанське та веганське (крім молочного - містить молоко).''',
              style: TextStyle(fontWeight: FontWeight.w300),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ),
      ),
    );
  }
}
