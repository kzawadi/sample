sealed class Failure {
  final String message;

  Failure({required this.message});
}

class UserNameIsEmpty extends Failure {
  UserNameIsEmpty({required super.message});
}

class UserNameIsTooLong extends Failure {
  UserNameIsTooLong({required super.message});
}

class UserNameIsTooShort extends Failure {
  UserNameIsTooShort({required super.message});
}

class UserNameshoulbeLowercases extends Failure {
  UserNameshoulbeLowercases({required super.message});
}
