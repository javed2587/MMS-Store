import 'package:flutter/material.dart';
import 'package:mms_store/initial_screen.dart';
// import 'package:mms_store/main/customers_schedule.dart/customer_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Welcome",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Color.fromARGB(255, 243, 101, 6), fontSize: 18),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Mobility Sales and Service Solutions',
              textDirection: TextDirection.ltr,
              style: TextStyle(
                  color: Color.fromARGB(255, 243, 101, 6), fontSize: 18),
            ),
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              'assets/images/12.png',
              width: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InitialScreen()),
                  // builder: (context) => const CustomerPage()),
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 243, 101, 6),
                backgroundColor: const Color.fromARGB(255, 235, 233, 232),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40))),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text("Login"),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const InitialPage()),
            //     );
            //   },
            //   child: const Text('Open Detail Page!'),
            // ),
          ],
        ),
      ),
    );
  }
}
