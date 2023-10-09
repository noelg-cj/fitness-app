import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String icon;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.icon,
    required this.boxColor
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Salad', 
        icon: 'assets/icons/salad.svg', 
        boxColor: Color(0xff9DCEFF))
    );

    categories.add(
      CategoryModel(
        name: "Cake", 
        icon: 'assets/icons/pancakes.svg', 
        boxColor: Color(0xffEEA4CE))
    );

    categories.add(
      CategoryModel(
        name: "Pie", 
        icon: 'assets/icons/pie.svg', 
        boxColor: Color(0xff9DCEFF))
    );

    categories.add(
      CategoryModel(
        name: "Smoothies",
        icon: 'assets/icons/smoothie.svg',
        boxColor: Color(0xffEEA4CE)
      )
    );

    return categories;
  }
}