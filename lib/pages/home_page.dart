import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/counter_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/settings');
          }, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {
            Navigator.pushNamed(context, '/summary');
          }, icon: Icon(Icons.info)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Counter :", style: TextStyle(fontSize: 24)),
          Text("${counter.counter}", style: TextStyle(fontSize: 48)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              ElevatedButton(onPressed: () {
                counter.increment();
              }, child: Icon(Icons.add)),
              SizedBox(width: 10),
              ElevatedButton(onPressed: () {
                counter.decrement();
              },
                  child: Icon(Icons.minimize)),
            ],
          ),
        ],
      ),
    );
  }
}
