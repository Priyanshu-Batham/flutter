import "package:flutter/material.dart";

//first question
// void main() {
//   runApp(MaterialApp(
//       home: Scaffold(
//           appBar: AppBar(title: Text("Welcome to Flutter")),
//           body: Center(child: Text("This is my last program (before exam)")),
//           floatingActionButton: FloatingActionButton(
//               child: Icon(Icons.star), onPressed: () => {}
//           ))));
// }

//second question
void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(title: Text("TItle")),
      body: Center(child: Text("hello world")),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.star, color: Colors.red, size: 50.0)),
    );
  }
}

//Third Question: Stateful Widget
//It doesn't work though

// void main() {
//   runApp(MyHomepage());
// }

// class MyHomepage extends StatefulWidget {
//   @override
//   MyHomepageState createState() => MyHomepageState();
// }

// class MyHomepageState extends State<MyHomepage> {
//   String name = "Peter";

//   @override
//   Widget build(BuildContext context) {
//     return Text(name);
//   }
// }
