import 'package:flutter/material.dart';
import 'package:mms_store/main/customers_schedule.dart/customer_page.dart';
import 'package:mms_store/main/customers_schedule.dart/customer_map_page.dart';
import 'package:mms_store/main/home_Page.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            // title: const Text('Flutter Tabs Demo'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  // text: "Home",
                  child: Text(
                    'Home',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 101, 6),
                    ),
                  ),
                ),
                Tab(
                  // text: "Home",
                  child: Text(
                    'Customer',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 101, 6),
                    ),
                  ),
                ),
                Tab(
                  // text: "Customer Map",
                  child: Text(
                    'Customer Map',
                    style: TextStyle(
                      color: Color.fromARGB(255, 243, 101, 6),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              const CustomerPage(),
              const CustomerMap(),
            ],
          ),
        ),
      ),
    );
  }
}
