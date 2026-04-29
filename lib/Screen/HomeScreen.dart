//This screen collects and displays data.
import 'package:flutter/material.dart';
import '../Model/MenuItem.dart';
import '../Widget/MenuItemCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _isInternetEnabled = false;

  final List<MenuItem> drinks1 = [
    MenuItem(
      name: "Coffee",
      price: "2\$",
      image: "assets/images/coffee.jpg",
    ),
    MenuItem(
      name: "Tea",
      price: "1\$",
      image: "assets/images/tea.jpg",
    ),
    MenuItem(
      name: "Espresso",
      price: "1\$",
      image: "assets/images/espresso.jpg",
    ),
    MenuItem(
      name: "Latte",
      price: "2\$",
      image: "assets/images/latte.jpg",
    ),
  ];

  final List<MenuItem> drinks2 = [
    MenuItem(
      name: "Coffee",
      price: "2\$",
      image: "assets/images/coffee.jpg",
    ),
    MenuItem(
      name: "Tea",
      price: "1\$",
      image: "assets/images/tea.jpg",
    ),
    MenuItem(
      name: "Espresso",
      price: "1\$",
      image: "assets/images/espresso.jpg",
    ),
    MenuItem(
      name: "Latte",
      price: "2\$",
      image: "assets/images/latte.jpg",
    ),
  ];

  final List<MenuItem> drinks3 = [
    MenuItem(
      name: "Coffee",
      price: "2\$",
      image: "assets/images/coffee.jpg",
    ),
    MenuItem(
      name: "Tea",
      price: "1\$",
      image: "assets/images/tea.jpg",
    ),
    MenuItem(
      name: "Espresso",
      price: "1\$",
      image: "assets/images/espresso.jpg",
    ),
    MenuItem(
      name: "Latte",
      price: "2\$",
      image: "assets/images/latte.jpg",
    ),
  ];

  final List<MenuItem> drinks4 = [
    MenuItem(
      name: "Coffee",
      price: "2\$",
      image: "assets/images/coffee.jpg",
    ),
    MenuItem(
      name: "Tea",
      price: "1\$",
      image: "assets/images/tea.jpg",
    ),
    MenuItem(
      name: "Espresso",
      price: "1\$",
      image: "assets/images/espresso.jpg",
    ),
    MenuItem(
      name: "Latte",
      price: "2\$",
      image: "assets/images/latte.jpg",
    ),
  ];
  Widget buildHorizontalList(List<MenuItem> items) {
    return SizedBox(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: items
            .map((item) => MenuItemCard(item: item))
            .toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              CheckboxListTile(
                title:
                const Text("Turn on Internet?"),

                value: _isInternetEnabled,

                secondary: const Icon(
                  Icons.signal_wifi_4_bar,
                  color: Colors.orange,
                ),

                activeColor: Colors.orange,

                controlAffinity:
                ListTileControlAffinity.leading,

                onChanged: (bool? value) {

                  setState(() {
                    _isInternetEnabled =
                    value!;
                  });

                },
              ),

              const SizedBox(height: 20),

              const Text(
                "menu Drink one",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              buildHorizontalList(drinks2),
              const Text(
                "menu Drink two",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              buildHorizontalList(drinks3),
              const Text(
                "menu Drink three",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),
              buildHorizontalList(drinks3),

            ],
          ),
        ),
      ),
    );
  }
}