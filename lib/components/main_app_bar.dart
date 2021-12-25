import 'package:flutter/material.dart';

AppBar buildMainAppBar() => AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        height: 50,
      ),
      centerTitle: true,
      actions: [
        Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
              ),
              onPressed: () {},
            ),
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 7.0,
                  ),
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                width: 10,
                height: 10,
              ),
            )
          ],
        ),
      ],
    );
