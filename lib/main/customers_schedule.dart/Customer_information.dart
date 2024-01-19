import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mms_store/main/customers_schedule.dart/customer_details_table.dart';
import 'package:mms_store/main/customers_schedule.dart/customer_heading.dart';
import 'package:mms_store/main/customers_schedule.dart/customer_table.dart';

class CustomerInformation extends StatelessWidget {
  const CustomerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomerHeading(),
            CustomerDetailsTable(),
            //CustomerInfoTable(),
            // ElevatedButton(
            //   onPressed: () {
            //     // Navigate back to the previous page
            //     Navigator.pop(context);
            //   },
            //   child: const Text('Go Back'),
            // ),
          ],
        ),
      ),
    );
  }
}
