import 'package:flutter/material.dart';
import '../models/clothing_item.dart';
import '../widgets/clothing_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});

  final List<ClothingItem> items = [
    ClothingItem(
      name: "Floral Summer Dress",
      price: 29.99,
      description: "A breezy, lightweight floral summer dress perfect for warm days. "
          "a flowing skirt that hits just above the knee. Made from soft, breathable fabric "
          "that keeps you comfortable and stylish.",
      sizes: "XS S M L XL",
      image: "https://i.ibb.co/1MKQkcM/floral-dress.jpg",
    ),
    ClothingItem(
      name: "Pastel Knit Cardigan",
      price: 34.99,
      description: "A cozy pastel knit cardigan with a button-down front and long sleeves. "
          "The soft, textured material provides warmth without bulk, making it ideal for layering. "
          "Pair it with a simple tee or tank for a chic, casual look.",
      sizes: "S M L XL",
      image: "https://i.ibb.co/9g0xzZn/pastel-knit-cardigan.jpg",
    ),
    ClothingItem(
      name: "Ruffled Blouse (White)",
      price: 19.99,
      description: "This elegant white ruffled blouse features a high neckline, "
          "delicate lace details, and a relaxed fit. Perfect for work or a dinner date, "
          "it pairs well with skirts, jeans, or tailored pants.",
      sizes: "S M L XL XXL",
      image: "https://i.ibb.co/yRFLgCG/ruffled-blouse-white.jpg",
    ),
    ClothingItem(
      name: "High-Waisted Plaid Skirt",
      price: 24.99,
      description: "A stylish high-waisted plaid skirt with a flattering A-line silhouette. "
          "Features a side zipper and soft pleats for a classic, preppy look. "
          "Ideal for pairing with sweaters, blouses, or casual tees.",
      sizes: "S M L XL",
      image: "https://i.ibb.co/71H6TD2/plaid-skirtjpg.jpg",
    ),
    ClothingItem(
      name: "Faux Leather Jacket",
      price: 49.99,
      description: "This chic faux leather jacket in black adds an edgy touch to any outfit. "
          "Designed with a zippered front, side pockets, and a cropped fit. "
          "The smooth, durable material ensures comfort and style for colder days.",
      sizes: "S M L XL",
      image: "https://i.ibb.co/GR4DQw4/faux-leather-jacketjpg.jpg",
    ),
    ClothingItem(
      name: "Wide-Leg Linen Pants",
      price: 39.99,
      description: "Light and breathable, these wide-leg linen pants are perfect for sunny days. "
          "Featuring an elastic waistband, drawstring tie, and side pockets for ultimate comfort. "
          "Style them with sandals and a tank top for a laid-back look.",
      sizes: "XS S M L XL",
      image: "https://i.ibb.co/cNLV8b8/linen-pants-white.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text(
            "LAB 1\n223031",
            style: TextStyle(
              fontFamily: "Georgia",
              fontSize: 20.0, // Optional: Adjust the font size
              fontWeight: FontWeight.bold, // Optional: Adjust the font weight
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: Colors.teal[300],
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 18.0,left: 5.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 90.0,
              childAspectRatio: 0.38,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ClothingCard(
                item: items[index],
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(item: items[index]),
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}