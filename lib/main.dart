import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Progress Indicators'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  double value = 0.0;

  _incrementCounter() {
    setState(() {
      value += 0.1;
      if (value > 1) {
        value = 0.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Indeterminate Progress Bar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              backgroundColor: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 100,
            ),
            LinearProgressIndicator(
              backgroundColor: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Determinate Progress Bar",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              value: value,
              backgroundColor: Colors.grey.shade300,
            ),
            const SizedBox(
              height: 100,
            ),
            LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.grey.shade300,
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
