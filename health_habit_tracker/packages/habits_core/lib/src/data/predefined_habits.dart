import '../models/habit.dart';
import '../models/habit_schedule.dart';

final List<Habit> predefinedHabits = [
  Habit(
    id: 'ph_001',
    name: 'Mindful Morning Meditation',
    description: 'Start your day with 10 minutes of guided meditation to cultivate focus and calm.',
    category: 'Mindfulness',
    defaultSchedule: const HabitSchedule(type: ScheduleType.daily, time: '07:00'),
  ),
  Habit(
    id: 'ph_002',
    name: 'Hydrate Smart',
    description: 'Drink at least 8 glasses (64 oz) of water throughout the day.',
    category: 'Nutrition',
    defaultSchedule: const HabitSchedule(type: ScheduleType.daily, time: '09:00'), // Reminder for first glass
  ),
  Habit(
    id: 'ph_003',
    name: 'Evening Digital Detox',
    description: 'Disconnect from all screens at least 1 hour before bedtime to improve sleep quality.',
    category: 'Well-being',
    defaultSchedule: const HabitSchedule(type: ScheduleType.daily, time: '21:00'),
  ),
  Habit(
    id: 'ph_004',
    name: '15-Minute Brisk Walk',
    description: 'Incorporate a short, brisk walk into your daily routine, preferably outdoors.',
    category: 'Fitness',
    defaultSchedule: const HabitSchedule(type: ScheduleType.daily, time: '12:30'),
  ),
  Habit(
    id: 'ph_005',
    name: 'Weekly Reflection Journal',
    description: 'Spend 20 minutes at the end of the week reflecting on your achievements and challenges.',
    category: 'Mindfulness',
    defaultSchedule: const HabitSchedule(type: ScheduleType.weekly, daysOfWeek: [7], time: '18:00'), // Sunday evening
  ),
];
