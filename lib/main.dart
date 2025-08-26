
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_project/pages/settings_page.dart';
import 'package:test_project/pages/summary_page.dart';
import 'package:test_project/providers/counter_provider.dart';
import 'package:test_project/providers/theme_provider.dart';
import 'email_template_5_8_2025/pages/home.dart' hide HomePage;
import 'gest,valid_18-8_2025/geastures.dart';
import 'other_widgets_12_8_2025/pages/profile_page.dart';
import 'gtask-billa_app//pages/home.dart' hide HomePage;
import 'pages/home_page.dart';


void main() {
  runApp(MultiProvider(
    providers:[
      ChangeNotifierProvider(create: (_) => CounterProvider()),
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ],
  child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme :  ThemeData.light()   ,
        darkTheme: ThemeData.dark() ,
        themeMode: themeProvider.themeMode,
        initialRoute: '/home',
        routes: {
          '/home' : (context) => const HomePage(),
          '/settings' : (context) => const SettingsPage(),
          '/summary' : (context) => const SummaryPage(),
        }

    );
  }
}

// routes: {
// '/second' : (context) => const SecondPage(),
// '/home' : (context) => const HomePage(),
// '/favorite' : (context) => const FavoritePage(),
// '/settings' : (context) => const SettingsPage(),
// },