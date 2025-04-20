import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String firstName;
  final String LatName;
  final String userName;
  final String regNumber;
  final DateTime regTime;
  bool hasAttended; // New field

  UserModel({
    required this.firstName,
    required this.LatName,
    required this.userName,
    required this.regNumber,
    required this.regTime,
    this.hasAttended = false, // Default to false
  });

  @override
  List<Object?> get props => [
    firstName,
    LatName,
    userName,
    regNumber,
    regTime,
    hasAttended,
  ];
}
