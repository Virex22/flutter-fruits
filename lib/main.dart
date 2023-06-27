import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/helper/list_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pomme, Poire et Ananas',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Pomme, Poire et Ananas'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("counter: $_counter - ${getTabTitle(_counter)}")),
      body: ListView.builder(
          itemCount: _counter,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              tileColor: index % 2 == 0 ? Colors.cyan : Colors.indigo,
              title: Text(
                '${index + 1}',
                style: const TextStyle(color: Colors.white),
              ),
              leading: Image.asset(
                getImagePath(index + 1),
                width: 50,
                height: 50,
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
