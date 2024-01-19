import 'package:flutter/material.dart';
import 'package:mms_store/login_page.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InitialScreen();
  }
}

class _InitialScreen extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color.fromARGB(255, 243, 101, 6),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'images/12.png',
                width: 100,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.apps),
                  hintText: 'Enter Application Type',
                  labelText: 'Application Type',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.person),
                  hintText: 'Enter User Id',
                  labelText: 'User Id',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.lock_open),
                  hintText: 'Enter Password',
                  labelText: 'Password',
                ),
              ),
              // const MyForm(),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Spacer(),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 243, 101, 6),
                        backgroundColor:
                            const Color.fromARGB(255, 235, 233, 232),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text("Login"),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 243, 101, 6),
                        backgroundColor:
                            const Color.fromARGB(255, 235, 233, 232),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                      ),
                      child: const Text("Cancel"),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
