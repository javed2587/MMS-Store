import 'package:flutter/material.dart';
import 'package:mms_store/models/customer.dart';

class CustomerDetailsTable extends StatelessWidget {
  CustomerDetailsTable({super.key});

  final Customer customer = Customer(
    id: 1234,
    name: 'John Doe',
    lastBuyDate: 3000,
    address: 'Lahore',
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
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(255, 243, 101, 6), width: 1)),
                child: DataTable(
                  headingRowHeight: 0,
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
      DataRow(
        cells: [
          const DataCell(Text(
            'CustomerNo',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.id}')),
          const DataCell(Text(
            'CustomerName',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.name}')),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text(
            'LastBuyDate',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.lastBuyDate}')),
          const DataCell(Text(
            'LastBuyDate',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.lastBuyDate}')),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text(
            'Address',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.address}')),
          const DataCell(Text(
            'LastBuyDate',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.lastBuyDate}')),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text(
            'CustomerNo',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.id}')),
          const DataCell(Text(
            'LastBuyDate',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.lastBuyDate}')),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text(
            'CustomerNo',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.id}')),
          const DataCell(Text(
            'LastBuyDate',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.lastBuyDate}')),
        ],
      ),
      DataRow(
        cells: [
          const DataCell(Text(
            'CustomerNo',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.id}')),
          const DataCell(Text(
            'LastBuyDate',
            style: TextStyle(color: Color.fromARGB(255, 243, 101, 6)),
          )),
          DataCell(Text('${customer.lastBuyDate}')),
        ],
      ),
    ];
  }
}
