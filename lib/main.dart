import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // const HomePage({super.key});
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text("Hello World"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "Hello World",
                style: GoogleFonts.aBeeZee(textStyle: TextStyle(fontSize: 32, color: Colors.blue)),
              ),
              Text(
                "Welcome to my app!",
                style:TextStyle(fontSize: 24, color: Colors.red),
              ),
              Text("I hope you enjoy it",
                  style: TextStyle(fontSize: 16, color: Colors.green)),
              Image.network(
                  "https://a.cdn-hotels.com/gdcs/production99/d1417/4da30a77-ecb2-4ead-a771-e61fac2a73dd.jpg?impolicy=fcrop&w=800&h=533&q=medium"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("This is left"),
                  SizedBox(width: 50),
                  Text("This is right")
                ],
              ),
              TextField(
                decoration: InputDecoration(hintText: "Enter your name"),
                controller: nameController,
              ),
              TextButton(
                  onPressed: () {
                    print("Hello, ${nameController.text}");
                  },
                  child: Text("Press Me")),
            ],
          ),
        )),
      ),
    );
  }
}
