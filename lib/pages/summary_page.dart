import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';
import '../providers/theme_provider.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CounterProvider>(context);
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Summary"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Counter : ${counter.counter}", style: TextStyle(fontSize: 24),),
            SizedBox(height: 20,),
            Text("Theme : ${themeProvider.isDarkMode ? "Dark" : "Light"}",style: TextStyle(fontSize: 24),)


            ]
        ),
      ),
    );
  }
}
