import 'package:flutter/material.dart';
import 'package:habit_discovery/discover_page.dart'; // Import the DiscoverPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Habit Tracker',
      theme: ThemeData(
        // Using a seed color for ColorScheme generation for a more modern look
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true, // Opt-in to Material 3
        // We can define a more news_toolkit-like theme later
      ),
      // Set DiscoverPage as the initial page
      home: const DiscoverPage(),
    );
  }
}

// MyHomePage is no longer needed as DiscoverPage is the home.
// If we need a wrapper or initial splash/loading screen later,
// we can re-introduce a similar structure.
