import 'package:fpdart/fpdart.dart';
import 'package:test/test.dart';

import '../entities/failures.dart';
import '../entities/user_name_entity.dart';

void main() {
  group('UserName -', () {
    test('creating a valid user name', () {
      final username = UserName.create('wildgreen');

      expect(username.isLeft(), false);
      expect(username.isRight(), true);
      expect(username.map((r) => r.value), right('wildgreen'));
      expect(username.map((r) => r.runtimeType), right(UserName));
    });
  });

  group('creating an empty user name -', () {
    test('', () {
      final username = UserName.create('');

      expect(username.isLeft(), true);
      expect(username.isRight(), false);
      expect(username.mapLeft((l) => l.runtimeType), left(UserNameIsEmpty));
      expect(username.mapLeft((l) => l.message),
          left('username can not be empty'));
    });
  });
  group('creating an short user name -', () {
    test('', () {
      final username = UserName.create('boss');

      expect(username.isLeft(), true);
      expect(username.isRight(), false);
      expect(username.mapLeft((l) => l.runtimeType), left(UserNameIsTooShort));
      expect(username.mapLeft((l) => l.message), left('username is too short'));
    });
  });

  group('creating an long user name -', () {
    test('', () {
      final username = UserName.create('bosskbsdsdsjdhjhjhsjfh');

      expect(username.isLeft(), true);
      expect(username.isRight(), false);
      expect(username.mapLeft((l) => l.runtimeType), left(UserNameIsTooLong));
      expect(username.mapLeft((l) => l.message), left('username is too long'));
    });
  });
  group('creating an mix cases user name -', () {
    test('', () {
      final username = UserName.create('wildgreeN');

      expect(username.isLeft(), true);
      expect(username.isRight(), false);
      expect(username.mapLeft((l) => l.runtimeType),
          left(UserNameshoulbeLowercases));
      expect(username.mapLeft((l) => l.message),
          left('username have to be lower case only'));
    });
  });
}
