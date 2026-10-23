import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(
                   color: Colors.blue,
                   text:  'Kotak 1',
                  ),
                  SizedBox(width: 20),
                  KotakBiruJempol(
                    color: Colors.green,
                    text:  'Kotak 2',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakBiruJempol(
                    color: Colors.yellow,
                    text: 'Kotak 3',
                  ),
                  SizedBox(width: 20),
                  KotakBiruJempol(
                    color: Colors.purple,
                    text: 'Kotak 4',
                  ),
                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  final Color color;
  final String text;

  KotakBiruJempol({
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.favorite,
          color: Colors.red,
          size: 40,
        ),
      ),
      Text(text),
      ],
      );
  }
}
