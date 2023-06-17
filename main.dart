import 'entities/failures.dart';
import 'entities/user_name_entity.dart';

void main() {
  final username = UserName.create('wildgreen');

  username.fold(
    (l) {
      print(switch (l) {
        UserNameIsEmpty(message: final msg) => msg,
        UserNameIsTooLong(message: final msg) => msg,
        UserNameIsTooShort(message: final msg) => msg,
        UserNameshoulbeLowercases(message: final msg) => msg,
      });
    },
    (r) {
      final user01 = User(18, 'Tyler', r);

      print(user01.name);
      print(user01.age);
      print(user01.userName.value);
    },
  );
}
