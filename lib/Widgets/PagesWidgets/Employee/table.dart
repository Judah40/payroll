import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({super.key});

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingRowColor: WidgetStateColor.resolveWith(
          (states) => const Color.fromRGBO(255, 111, 0, 1)),
      dataRowColor: WidgetStateColor.resolveWith((states) => Colors.white),
      columns: const <DataColumn>[
        DataColumn(
          label: Expanded(
            child: Text(
              'Name',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Address',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Region',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Start Date',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Age',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Profile Picture',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'NASSIT Number',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
        DataColumn(
          label: Expanded(
            child: Text(
              'Action',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
      rows: const <DataRow>[
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Sarah')),
            DataCell(Text('123 Main St')),
            DataCell(Text('East')),
            DataCell(Text('2023-01-15')),
            DataCell(Text('19')),
            DataCell(CircleAvatar(
                backgroundImage: AssetImage('assets/profile1.png'))),
            DataCell(Text('123456789')),
            DataCell(IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: null, // Replace with your delete function
            )),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('Janine')),
            DataCell(Text('456 Maple Ave')),
            DataCell(Text('West')),
            DataCell(Text('2022-05-30')),
            DataCell(Text('43')),
            DataCell(CircleAvatar(
                backgroundImage: AssetImage('assets/profile2.png'))),
            DataCell(Text('987654321')),
            DataCell(IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: null, // Replace with your delete function
            )),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            DataCell(Text('William')),
            DataCell(Text('789 Elm St')),
            DataCell(Text('North')),
            DataCell(Text('2021-08-20')),
            DataCell(Text('27')),
            DataCell(CircleAvatar(
                backgroundImage: AssetImage('assets/profile3.png'))),
            DataCell(Text('456789123')),
            DataCell(IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red,
              onPressed: null, // Replace with your delete function
            )),
          ],
        ),
      ],
    );
  }
}
