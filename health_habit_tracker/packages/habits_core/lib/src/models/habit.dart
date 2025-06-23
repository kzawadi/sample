import 'package:equatable/equatable.dart';
import 'habit_schedule.dart';

/// {@template habit}
/// A representation of a health habit.
///
/// Each habit has a unique [id], [name], [description],
/// a [defaultSchedule] for reminders, and a [category].
/// {@endtemplate}
class Habit extends Equatable {
  /// {@macro habit}
  const Habit({
    required this.id,
    required this.name,
    required this.description,
    required this.defaultSchedule,
    required this.category,
    this.isCustom = false, // To distinguish predefined vs user-created
  });

  /// The unique identifier of the habit.
  final String id;

  /// The name of the habit (e.g., "Drink Water", "Meditate").
  final String name;

  /// A detailed description of the habit.
  final String description;

  /// The default reminder schedule for this habit.
  /// Professionals predefine this, but users can customize it later.
  final HabitSchedule defaultSchedule;

  /// The category of the habit (e.g., "Fitness", "Mindfulness", "Nutrition").
  final String category;

  /// Whether this habit was created by the user (true) or predefined (false).
  final bool isCustom;

  @override
  List<Object?> get props => [id, name, description, defaultSchedule, category, isCustom];

  /// Creates a copy of this `Habit` but with the given fields replaced with
  /// the new values.
  Habit copyWith({
    String? id,
    String? name,
    String? description,
    HabitSchedule? defaultSchedule,
    String? category,
    bool? isCustom,
  }) {
    return Habit(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      defaultSchedule: defaultSchedule ?? this.defaultSchedule,
      category: category ?? this.category,
      isCustom: isCustom ?? this.isCustom,
    );
  }
}
