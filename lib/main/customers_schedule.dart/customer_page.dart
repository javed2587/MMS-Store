import 'package:flutter/material.dart';
import 'package:mms_store/main/customers_schedule.dart/customer_table.dart';
import 'package:mms_store/models/customer.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        // Text('Customer Page', style: TextStyle(fontSize: 35.0)),

        CustomerInfoTable(),
      ]),
    );
  }
}
