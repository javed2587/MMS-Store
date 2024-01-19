import 'package:flutter/material.dart';
import 'package:mms_store/main/home_tabs.dart';

class DataPage extends StatelessWidget {
  const DataPage({super.key});

  // final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Data Screen',
            style: TextStyle(
              color: Color.fromARGB(255, 243, 101, 6),
              fontSize: 40,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              foregroundColor: const Color.fromARGB(255, 243, 101, 6),
              backgroundColor: const Color.fromARGB(255, 235, 233, 232),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
            ),
            child: const Text("Next"),
          ),
          const SizedBox(
            height: 7,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 243, 101, 6),
              backgroundColor: const Color.fromARGB(255, 235, 233, 232),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
            ),
            child: const Text("Previus"),
          ),
        ],
      ),
    );
  }
}
