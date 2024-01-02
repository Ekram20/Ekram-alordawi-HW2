import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Ekram Alordawi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 24, 19),
        appBar: AppBar(
          flexibleSpace: Container(
              decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 244, 54, 165),
              Color.fromARGB(255, 255, 230, 0)
            ], begin: Alignment.bottomRight, end: Alignment.topLeft),
          )),
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
              child: TextButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialog(
                      title: Text(
                        "Information",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      content: Card(
                        color: Color.fromARGB(255, 242, 197, 197),
                        margin: EdgeInsets.all(10.0),
                        child: ListTile(
                          title: Text(
                            "NAME :Ekram Alrdawi",
                            style: TextStyle(
                              color: Color.fromARGB(255, 245, 137, 60),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            " Number : 5180000 ",
                            style: TextStyle(
                              color: Color.fromARGB(255, 151, 172, 170),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: const CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('image/img.jpg'),
              backgroundColor: Color.fromARGB(255, 7, 8, 7),
            ),
          )),
        ));
  }
}
