import 'package:flutter/material.dart';
import 'package:sample/model/user_model.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  late TextEditingController _firstName;
  late TextEditingController _lastName;

  List<UserModel> users = [];

  @override
  void initState() {
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Attendance Management System"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Register User",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text("First Name: "),
                Expanded(
                  child: TextField(
                    controller: _firstName,
                    decoration: InputDecoration(
                      hintText: "Enter first name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Text("Last Name: "),
                Expanded(
                  child: TextField(
                    controller: _lastName,
                    decoration: InputDecoration(
                      hintText: "Enter last name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final user = UserModel(
                      firstName: _firstName.text,
                      LatName: _lastName.text,
                      userName: "userName",
                      regNumber: "regNumber",
                      regTime: DateTime.now(),
                      hasAttended: false, // New field
                    );

                    setState(() {
                      users.add(user);
                    });
                    print(user);
                  },
                  child: const Text("Sign In"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      final user = users.firstWhere(
                        (e) => e.firstName == _firstName.text,
                        // orElse: () => null,
                      );
                      user.hasAttended = true; // Mark as attended
                    });
                  },
                  child: const Text("Mark Attendance"),
                ),
              ],
            ),
            const SizedBox(height: 32),
            const Text(
              "Users",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...users.map((e) {
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  title: Text(e.firstName),
                  subtitle: Text("Last Name: ${e.LatName}"),
                  trailing:
                      e.hasAttended
                          ? const Icon(Icons.check_circle, color: Colors.green)
                          : const Icon(Icons.cancel, color: Colors.red),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
