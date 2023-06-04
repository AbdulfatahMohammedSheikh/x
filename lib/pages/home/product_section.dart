import 'package:amazon_flutter/widgets/app_bar_item.dart';
import 'package:flutter/material.dart';
import '../../core/app_style.dart';

class ProductSection extends StatefulWidget {
  const ProductSection({super.key});

  @override
  State<ProductSection> createState() => _ProductSectionState();
}

class _ProductSectionState extends State<ProductSection> {
  //TODO: implement the rest of the functionality
  //TODO: use listview
  //TODO: convert the list view to pageview.builder
  int? listLenght;
  List<Proudct>? productList;

  @override
  void initState() {
    productList = products;

    listLenght = productList!.length;
    super.initState();
  }

  final List<Proudct> products = [
    Proudct("Super Skin Care", "assets/img1.png", 40, ProudctType.skinCare),
    Proudct("Super Skin Care", "assets/img2.png", 40, ProudctType.conditioner),
    Proudct("Super Skin Care", "assets/img3.png", 40, ProudctType.conditioner),
    Proudct("Super Skin Care", "assets/img4.png", 40, ProudctType.skinCare),
    Proudct("Super Skin Care", "assets/img5.png", 40, ProudctType.conditioner),
    Proudct("Super Skin Care", "assets/img6.png", 40, ProudctType.foundation),
    Proudct("Super Skin Care", "assets/img7.png", 40, ProudctType.conditioner),
    Proudct("Super Skin Care", "assets/img8.png", 40, ProudctType.skinCare),
    Proudct("Super Skin Care", "assets/img9.png", 40, ProudctType.conditioner),
    Proudct("Super Skin Care", "assets/img10.png", 40, ProudctType.skinCare),
    Proudct("Super Skin Care", "assets/img11.png", 40, ProudctType.conditioner),
    Proudct("Super Skin Care", "assets/img12.png", 40, ProudctType.foundation),
    Proudct("Super Skin Care", "assets/img13.png", 40, ProudctType.conditioner),
    Proudct("Super Skin Care", "assets/img14.png", 40, ProudctType.foundation),
  ];
  @override
  Widget build(BuildContext context) {
    /// a Row with two Colums one for the action and the other is for product

    return Container(
      padding: EdgeInsets.only(top: 80),
      color: Colors.greenAccent,
      width: double.infinity,
      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(left: 200),
        child: Row(children: [
          Container(
              color: Colors.blueAccent,
              child: Column(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  AppBarItem(
                    tilte: "All",
                    activeColor: AppStyle().black,
                    hoverColor: AppStyle().pink,
                    fonsSize: 24,
                  ),
                  AppBarItem(
                    tilte: "Skin Care",
                    activeColor: AppStyle().black,
                    hoverColor: AppStyle().pink,
                    fonsSize: 24,
                  ),
                  AppBarItem(
                    tilte: "Foundatoin",
                    activeColor: AppStyle().black,
                    hoverColor: AppStyle().pink,
                    fonsSize: 24,
                  ),
                  AppBarItem(
                    tilte: "Condational",
                    activeColor: AppStyle().black,
                    hoverColor: AppStyle().pink,
                    fonsSize: 24,
                  ),
                ],
              ))
        ]),
      ),
    );
  }
}

enum ProudctType { skinCare, conditioner, foundation }

class Proudct {
  final String name;
  final String imagePath;
  final double price;
  final ProudctType type;
  Proudct(this.name, this.imagePath, this.price, this.type);
}
