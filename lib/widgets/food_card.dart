import 'package:flutter/material.dart';
import '../models/food_item.dart';


class FoodCard extends StatelessWidget {
  final FoodItem food;

  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: Image.asset(food.image, width: 50),
        title: Text(food.name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text("R\$ ${food.price.toStringAsFixed(2)}"),
        trailing: IconButton(
          icon: const Icon(Icons.add_shopping_cart, color: Colors.orange),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("${food.name} adicionado ao carrinho!"))
            );
          },
        ),
      ),
    );
  }
}
