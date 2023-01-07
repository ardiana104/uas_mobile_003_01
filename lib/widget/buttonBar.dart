import 'package:flutter/material.dart';
import 'package:flutter_application_uas/screens/add_product.dart';
import 'package:flutter_application_uas/screens/edit_product.dart';
import 'package:flutter_application_uas/screens/homepage.dart';
import 'package:flutter_application_uas/screens/product_detail.dart';

Widget buildBottomBar(index, BuildContext context) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    currentIndex: index,
    onTap: (i) {
      switch (i) {
        case 0:
          Navigator.of(context).pushReplacement(new MaterialPageRoute(
              builder: (BuildContext context) => HomePage()));
          break;
        case 1:
          Navigator.of(context).pushReplacement(new MaterialPageRoute(
              builder: (BuildContext context) => AddProduct()));
          break;
        default:
      }
    },
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: ("Home")),
      BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined), label: ("Shope")),
    ],
  );
}
