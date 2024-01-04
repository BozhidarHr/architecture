import 'package:flutter/material.dart';

class BusinessContactsPage extends StatelessWidget {
  final List<Map<String, dynamic>> contacts = [
    {"name": "Alice Smith", "email": "alice@example.com", "phone": "123-456-7890"},
    {"name": "Bob Johnson", "email": "bob@example.com", "phone": "234-567-8901"},
    // Add more contacts here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Contacts'),
      ),
      body: SingleChildScrollView(
        child: DataTable(
          columns: const <DataColumn>[
            DataColumn(label: Text('Name')),
            DataColumn(label: Text('Email')),
            DataColumn(label: Text('Phone')),
          ],
          rows: contacts.map<DataRow>((contact) => DataRow(
            cells: <DataCell>[
              DataCell(Text(contact["name"])),
              DataCell(Text(contact["email"])),
              DataCell(Row(
                children: <Widget>[
                  Icon(Icons.phone, size: 20),
                  SizedBox(width: 5),
                  Text(contact["phone"]),
                ],
              )),
            ],
          )).toList(),
        ),
      ),
    );
  }
}