import 'package:flutter/material.dart';
import 'package:reto1_donut_app_ragde_escalante/utils/donut_tile.dart';

class DonutTab extends StatefulWidget {
  @override
  _DonutTabState createState() => _DonutTabState();
}

class _DonutTabState extends State<DonutTab> {
  final List donutOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
    ["Ulisiño", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Vokgpt", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Puigservicio", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Credriiich", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  // Cantidad de ítems y total del carrito
  int cartItems = 2;
  double cartTotal = 45.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // La lista de donuts en venta (grid)
        Expanded(
          child: GridView.builder(
            itemCount: donutOnSale.length,
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1 / 1.5),
            itemBuilder: (context, index) {
              return DonutTile(
                donutFlavor: donutOnSale[index][0],
                donutPrice: donutOnSale[index][1],
                donutColor: donutOnSale[index][2],
                imageName: donutOnSale[index][3],
              );
            },
          ),
        ),
      ],
    );
  }
}