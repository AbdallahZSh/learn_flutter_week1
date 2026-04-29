// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(), // هنا نخبر التطبيق أن يبدأ من واجهتك التي صممتها
//   ));
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   //  تعريف المتغير هنا داخل الـ State لكي يعمل الـ Checkbox
//   bool _addExtraCheese = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text("Menu"),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         foregroundColor: Colors.black,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // const Text(
//               //   "welcome to cofe",
//               //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               // ),
//               // const SizedBox(height: 10),
//
//               //  الـ Checkbox يعمل الآن بشكل سليم بفضل الـ setState
//               CheckboxListTile(
//                 title: const Text("Are you Need Turn on Internet?"),
//                 //subtitle: const Text("السعر: +1\$"),
//                 value: _addExtraCheese,
//                 secondary: const Icon(Icons.signal_wifi_4_bar, color: Colors.orange),
//                 activeColor: Colors.orange,
//                 controlAffinity: ListTileControlAffinity.leading,
//                 onChanged: (bool? value) {
//                   setState(() {
//                     _addExtraCheese = value!;
//                   });
//                 },
//               ),
//
//               const SizedBox(height: 20),
//
//               //Drink
//               const Text("Drink", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 10),
//               buildHorizontalList([
//                 buildFoodItem("Coffee", "2\$", "assets/images/coffee.jpg"),
//                 buildFoodItem("Tea", "1\$", "assets/images/tea.jpg"),
//                 buildFoodItem("Espresso", "1\$", "assets/images/espresso.jpg"),
//                 buildFoodItem("Latte", "2\$", "assets/images/latte.jpg"),
//               ]),
//
//               const SizedBox(height: 20),
//
//               //Soft & Natural juices
//               const Text("Soft & Natural juices", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 10),
//               buildHorizontalList([
//                 buildFoodItem("Co Co Cola", "2\$", "assets/images/cola.jpg"),
//                 buildFoodItem("Orange", "1\$", "assets/images/orange.jpg"),
//                 buildFoodItem("Lemon", "2\$", "assets/images/lemon.jpg"),
//                 buildFoodItem("Sprite", "2\$", "assets/images/sprite.jpg"),
//               ]),
//
//               const SizedBox(height: 30),
//
//               //Food
//               const Text("Food", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 10),
//               buildHorizontalList([
//                 buildFoodItem("Mozzarell", "2\$", "assets/images/zzarella.jpg"),
//                 buildFoodItem("Pizza", "3\$", "assets/images/pizza.webp"),
//                 buildFoodItem("Burger 🍔", "3\$", "assets/images/burger.jpg"),
//                 buildFoodItem("Shawarma", "3\$", "assets/images/shawarmaWrap.jpg"),
//               ]),
//
//               const SizedBox(height: 30),
//
//               //Games
//               const Text("Games", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//               const SizedBox(height: 10),
//               buildHorizontalList([
//                 buildFoodItem("Play Station", "3\$", "assets/images/PlayStation.jpg"),
//                 buildFoodItem("PUBG", "3\$", "assets/images/pubg.jpg"),
//                 buildFoodItem("GTA 15", "3\$", "assets/images/gta.jpg"),
//               ]),
//               const SizedBox(height: 50),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   // I'm use this function to build horizontal list and reduce code
//   Widget buildHorizontalList(List<Widget> items) {
//     return SizedBox(
//       height: 250,
//       child: ListView(
//         scrollDirection: Axis.horizontal,
//         children: items,
//       ),
//     );
//   }

  // I'm use this function to build food item and reduce code
  // Widget buildFoodItem(String name, String price, String imagePath) {
  //   return Container(
  //     width: 170,
  //     margin: const EdgeInsets.only(right: 15, bottom: 10),
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(15),
  //       border: Border.all(color: Colors.orange, width: 2),
  //       boxShadow: const [
  //         BoxShadow(
  //           color: Colors.black12,
  //           blurRadius: 5,
  //           offset: Offset(0, 5),
  //         ),
  //       ],
  //     ),
  //     child: Column(
  //       children: [
  //         Expanded(
  //           child: ClipRRect(
  //             borderRadius: const BorderRadius.vertical(top: Radius.circular(13)),
  //             child: Image.asset(
  //               imagePath,
  //               width: double.infinity,
  //               fit: BoxFit.cover,
  //               errorBuilder: (context, error, stackTrace) => Container(color: Colors.grey[300], child: const Icon(Icons.image_not_supported)),
  //             ),
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.symmetric(vertical: 8.0),
  //           child: Column(
  //             children: [
  //               Text(name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
  //               Text("Price: $price", style: const TextStyle(fontSize: 13, color: Colors.grey)),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
//}
import 'package:flutter/material.dart';

import 'Screen/HomeScreen.dart';

void main() {

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
  );

}