import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Application',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Complex layout example'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product List")),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(3.0, 12.0, 3.0, 12.0),
        children: const <Widget>[
          ProductBox(
            name: "iPhone",
            description: "iPhone is the top branded phone ever",
            price: 55000,
            image: "iphone.png",
          ),
          ProductBox(
            name: "Android",
            description: "Android is a very stylish phone",
            price: 10000,
            image: "android.png",
          ),
          ProductBox(
            name: "Tablet",
            description: "Tablet is a popular device for official meetings",
            price: 25000,
            image: "tablet.png",
          ),
          ProductBox(
            name: "Laptop",
            description: "Laptop is most famous electronic device",
            price: 35000,
            image: "laptop.png",
          ),
          ProductBox(
            name: "Desktop",
            description: "Desktop is most popular for regular use",
            price: 10000,
            image: "computer.png",
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });

  final String name;
  final String description;
  final int price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      height: 110,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/$image"),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(description),
                    Text("Price: $price"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
