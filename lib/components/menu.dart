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
                leading: const Icon(
                  Icons.store,
                  color: Colors.black,
                ),
                title: const Text(
                  'Магазин',
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.store, (route) => false);
                }),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: const Icon(
                  Icons.account_box,
                  color: Colors.black,
                ),
                title: const Text(
                  'Обліковий запис',
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.account, (route) => false);
                }),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: const Icon(
                  Icons.contact_page,
                  color: Colors.black,
                ),
                title: const Text(
                  'Контакти',
                ),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.contacts, (route) => false);
                }),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: const Icon(
                  Icons.list_alt_outlined,
                  color: Colors.black,
                ),
                title: const Text('Про нас'),
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Screens.about, (route) => false);
                }),
            const Divider(
              color: Colors.black,
            ),
            ListTile(
                leading: const Icon(
                  Icons.pending,
                  color: Colors.black,
                ),
                title: const Text('Блог'),
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
