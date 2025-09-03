import 'package:flutter/material.dart';
import 'package:uuknurr/homepage_azizah.dart';
import 'package:uuknurr/paymentpage_azizah.dart';
import 'package:uuknurr/registerpage_azizah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modul Material App',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: PaymentPageNur(),
    );
  }
}

class Counter extends StatefulWidget {
  const Counter ({super.key});

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter>{
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$_counter',
              style: const TextStyle(fontSize: 40),
            ),
            const SizedBox(height: 20),
            ElevatedButton (
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Colors.white,
              ),
              onPressed: (){
                setState((){
                  _counter++;
                });
              },
              child: const Text('Tambah'),
            ),
          ],
        ),
      ),
      );
  }
}