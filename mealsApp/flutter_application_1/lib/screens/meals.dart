import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/dummy_data.dart';
import 'package:flutter_application_1/models/category.dart';
import 'package:flutter_application_1/models/meal.dart';

class Meals extends StatelessWidget {
  const Meals({Key? key, required this.category}) : super(key: key);
  final Category category;

  @override
  Widget build(BuildContext context) {
    List<Meal> meals =
        mealList.where((e) => e.categoryId == category.id).toList();

    Widget widget = ListView.builder(
        itemCount: meals.length,
        itemBuilder: ((context, index) => Text(meals[index].name)));

    if (meals.isEmpty) {
      widget = const Center(
        child: Text("Bu kategoride hiç bir tarif bulunamadı..."),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
      ),
      body: widget,
    );
  }
}
