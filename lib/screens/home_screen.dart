import 'package:flutter/material.dart';
import '../models/food_item.dart';
import '../widgets/food_card.dart';
import '../widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FoodItem> foodList = [
      FoodItem(name: "Pizza", price: 25.0, image: "assets/images/pizza.png"),
      FoodItem(name: "Hambúrguer", price: 18.0, image: "assets/images/burger.png"),
      FoodItem(name: "Sushi", price: 30.0, image: "assets/images/sushi.png"),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Food Delivery")),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          return FoodCard(food: foodList[index]);
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
