import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mms_store/main/customers_schedule.dart/Customer_information.dart';
import 'package:mms_store/models/customer.dart';

class CustomerInfoTable extends StatelessWidget {
  CustomerInfoTable({super.key});

  final Customer customer = Customer(
    id: 1234,
    name: 'John Doe',
    lastBuyDate: 30,
    address: 'john.doe@example.com',
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Column(
            children: [
              Container(
                //width: double.infinity,
                // height: double.infinity,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1)),
                child: DataTable(
                  columns: _buildColumns(),
                  rows: _buildRows(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DataColumn> _buildColumns() {
    return [
      DataColumn(label: Text('')),
      DataColumn(label: Text('')),
      DataColumn(label: Text('')),
      DataColumn(label: Text('')),
    ];
  }

  List<DataRow> _buildRows(context) {
    return [
      DataRow(cells: [
        const DataCell(Text(
          'CustomerNo',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text('CustomerName',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)))),
        DataCell(Text('')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('${customer.id}')),
        DataCell(Text('${customer.name}')),
        DataCell(Text('')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text(
          'Credit Limit',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text(
          'Credit Days',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text(
          'Overdue',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text(
          'Balance',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
      ]),
      DataRow(cells: [
        DataCell(Text('9')),
        DataCell(Text('10')),
        DataCell(Text('11')),
        DataCell(Text('12')),
      ]),
      DataRow(cells: [
        DataCell(Text(
          'Last By Date',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text(
          'Customer Address',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text('')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text('...')),
        DataCell(Text('...')),
        DataCell(Text('')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Text(
          'GPS Navigation',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text(
          'Outlet',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text('')),
        DataCell(Text('')),
      ]),
      DataRow(cells: [
        DataCell(Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.blue,
            )
          ],
        )),
        DataCell(Row(
          children: [
            Icon(
              Icons.add_location_alt,
              color: Colors.blue,
            )
          ],
        )),
        DataCell(Text('')),
        DataCell(ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const CustomerInformation()),
              );
            },
            child: Text('Customer Details'))),
      ]),
    ];
  }
}
