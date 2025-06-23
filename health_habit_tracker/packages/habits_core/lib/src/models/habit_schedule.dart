import 'package:equatable/equatable.dart';

/// Represents the type of schedule for a habit.
enum ScheduleType {
  daily,
  weekly,
  monthly, // Added for more flexibility
}

/// Defines the scheduling parameters for a habit reminder.
class HabitSchedule extends Equatable {
  const HabitSchedule({
    required this.type,
    this.time, // e.g., "09:00" for daily/monthly, or specific time for weekly
    this.daysOfWeek, // For weekly: 1 (Mon) to 7 (Sun)
    this.dayOfMonth, // For monthly: 1 to 31
  });

  /// The type of schedule (e.g., daily, weekly).
  final ScheduleType type;

  /// The time of day for the reminder (e.g., "HH:mm").
  /// Applicable for daily, weekly, and monthly schedules.
  final String? time;

  /// For weekly schedules, a list of days (1 for Monday, 7 for Sunday).
  final List<int>? daysOfWeek;

  /// For monthly schedules, the day of the month (1-31).
  final int? dayOfMonth;

  @override
  List<Object?> get props => [type, time, daysOfWeek, dayOfMonth];

  /// Creates a copy of this `HabitSchedule` but with the given fields replaced with
  /// the new values.
  HabitSchedule copyWith({
    ScheduleType? type,
    String? time,
    List<int>? daysOfWeek,
    int? dayOfMonth,
  }) {
    return HabitSchedule(
      type: type ?? this.type,
      time: time ?? this.time,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      dayOfMonth: dayOfMonth ?? this.dayOfMonth,
    );
  }
}
