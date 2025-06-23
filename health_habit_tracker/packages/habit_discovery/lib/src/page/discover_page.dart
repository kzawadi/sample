import 'package:flutter/material.dart';
import 'package:habits_core/habits_core.dart'; // Import the main barrel file

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  // In a real app, this data would likely come from a state management solution
  // (e.g., Bloc, Riverpod, Provider) connected to a repository.
  final List<Habit> _habitsToDisplay = predefinedHabits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover New Habits'),
      ),
      body: ListView.builder(
        itemCount: _habitsToDisplay.length,
        itemBuilder: (context, index) {
          final habit = _habitsToDisplay[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(habit.name),
              subtitle: Text(habit.description),
              trailing: ElevatedButton(
                onPressed: () {
                  // Placeholder for "Add habit" functionality
                  // This will be implemented in a later step.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Adding ${habit.name} (not implemented yet)')),
                  );
                },
                child: const Text('Add'),
              ),
              // Potentially add an icon based on habit.category
              // leading: Icon(_getIconForCategory(habit.category)),
            ),
          );
        },
      ),
    );
  }

  // Example helper for category icons (optional)
  // IconData _getIconForCategory(String category) {
  //   switch (category.toLowerCase()) {
  //     case 'mindfulness':
  //       return Icons.self_improvement;
  //     case 'nutrition':
  //       return Icons.restaurant;
  //     case 'well-being':
  //       return Icons.spa;
  //     case 'fitness':
  //       return Icons.fitness_center;
  //     default:
  //       return Icons.star;
  //   }
  // }
}
