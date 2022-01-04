import 'package:flutter/widgets.dart';
import 'package:tsvit_paporoti/models/product.dart';
import 'package:tsvit_paporoti/screens/about/about_screen.dart';
import 'package:tsvit_paporoti/screens/account/account_screen.dart';
import 'package:tsvit_paporoti/screens/blog/blog_screen.dart';
import 'package:tsvit_paporoti/screens/contacts/contacts_screen.dart';
import 'package:tsvit_paporoti/screens/product/product_screen.dart';
import 'package:tsvit_paporoti/screens/store/store_screen.dart';

class ScreensFactory {
  Widget makeStoreScreen() => const StoreScreen();
  Widget makeAccountScreen() => const AccountScreen();
  Widget makeContactsScreen() => const ContactsScreen();
  Widget makeAboutScreen() => const AboutScreen();
  Widget makeBlogScreen() => const BlogScreen();
}
