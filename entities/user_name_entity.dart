import 'package:fpdart/fpdart.dart';

import 'failures.dart';

class User {
  final int age;
  final String name;
  final UserName userName;

  User(this.age, this.name, this.userName);
}

class UserName {
  final String value;

  UserName(this.value);

  static Either<Failure, UserName> create(String username) {
    if (_isEmpty(username)) {
      return left(UserNameIsEmpty(message: 'username can not be empty'));
    } else if (_isTooShort(username)) {
      return left(UserNameIsTooShort(message: 'username is too short'));
    } else if (_isTooLong(username)) {
      return left(UserNameIsTooLong(message: 'username is too long'));
    } else if (_isUppercase(username)) {
      return left(UserNameshoulbeLowercases(
          message: 'username have to be lower case only'));
    }

    return right(UserName(username));
  }

  static bool _isEmpty(String value) {
    final result = value.isEmpty;
    return result;
  }

  static bool _isTooShort(String value) {
    final result = value.length;
    return result <= 4;
  }

  static bool _isTooLong(String value) {
    final result = value.length;
    return result >= 10;
  }

  static bool _isUppercase(String value) {
    for (var i = 0; i < value.length; i++) {
      if (value[i] == value[i].toUpperCase()) {
        return true;
      }
    }
    return false;
  }
}
