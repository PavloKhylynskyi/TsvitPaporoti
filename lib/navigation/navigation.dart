import 'package:flutter/material.dart';
import 'package:tsvit_paporoti/navigation/screens_factory.dart';

abstract class Screens {
  static const store = '/';
  static const account = '/account';
  static const contacts = '/contacts';
  static const about = '/about';
  static const blog = '/blog';
}

class Navigation {
  final _screenFactory = ScreensFactory();

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        Screens.store: (context) => _screenFactory.makeStoreScreen(),
        Screens.account: (context) => _screenFactory.makeAccountScreen(),
        Screens.contacts: (context) => _screenFactory.makeContactsScreen(),
        Screens.about: (context) => _screenFactory.makeAboutScreen(),
        Screens.blog: (context) => _screenFactory.makeBlogScreen(),
      };
}
