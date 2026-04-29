//This piece is only responsible for displaying one item.
import 'package:flutter/material.dart';
import '../Model/MenuItem.dart';

class MenuItemCard extends StatelessWidget {
  final MenuItem item;

  const MenuItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      margin: const EdgeInsets.only(right: 15, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.orange, width: 2),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
              const BorderRadius.vertical(top: Radius.circular(13)),
              child: Image.asset(
                item.image,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    Container(
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported),
                    ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "Price: ${item.price}",
                  style: const TextStyle(
                      fontSize: 13,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}