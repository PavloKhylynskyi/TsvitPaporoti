import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/constants/constants.dart';
import 'package:tsvit_paporoti/navigation/navigation.dart';

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            ListTile(
                leading: Icon(Icons.home),
                title: Text('Магазин'),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.store, (route) => false);
                }),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.category),
                title: Text('Обліковий запис'),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.account, (route) => false);
                }),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Контакти'),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.contacts, (route) => false);
                }),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.contact_page),
                title: Text('Про нас'),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.about, (route) => false);
                }),
            Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: Icon(Icons.contact_page),
                title: Text('Блог'),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.blog, (route) => false);
                }),
          ],
        ),
        color: kPrimaryColor,
      ),
    );
  }
}
