import 'package:flutter/material.dart';
import 'package:mms_store/common/form_feilds.dart';
import 'package:mms_store/data_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
              const MyForm(),
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
                              builder: (context) => const DataPage()),
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

              // ElevatedButton(
              //   child: const Text('Go back to Home Page!'),
              //   onPressed: () {
              //     Navigator.pop(context);
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
