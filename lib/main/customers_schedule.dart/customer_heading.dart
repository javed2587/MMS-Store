import 'package:flutter/material.dart';
import 'package:mms_store/models/customer.dart';

class CustomerHeading extends StatelessWidget {
  CustomerHeading({super.key});

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
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(255, 243, 101, 6))),
            child: const Row(
              children: [
                Text(
                  'Route No : 34A21 ',
                  style: TextStyle(
                    color: Color.fromARGB(255, 243, 101, 6),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.map_rounded,
                  color: Color.fromARGB(255, 119, 119, 119),
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
                Text(
                  '31/12/2023',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Color.fromARGB(255, 243, 101, 6),
                  ),
                ),
                Icon(
                  Icons.map_rounded,
                  color: Color.fromARGB(255, 119, 119, 119),
                  size: 24.0,
                  semanticLabel: 'Text to announce in accessibility modes',
                ),
              ],
            ),
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
        DataCell(Text(
          'CustomerNo',
          style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
        )),
        DataCell(Text('CustomerName',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)))),
        DataCell(Text('')),
        DataCell(Text('')),
      ]),
    ];
  }
}
