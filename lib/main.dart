import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/navigation/navigation.dart';
import 'package:tsvit_paporoti/screens/product/product_screen.dart';
import 'package:tsvit_paporoti/theme/theme.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  final navigation = Navigation();
  Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tsvit paporoti',
      theme: AppTheme.light,
      // darkTheme: AppTheme.dark,
      routes: navigation.routes,
      // home: ProductScreen(),
    );
  }
}
