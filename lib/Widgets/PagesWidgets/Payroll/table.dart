import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({super.key});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Scrollbar(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: DataTable(
              headingRowColor: WidgetStateColor.resolveWith(
                  (states) => const Color.fromRGBO(255, 111, 0, 1)),
              dataRowColor: WidgetStateColor.resolveWith((states) => Colors.white),
              columns: const <DataColumn>[
                DataColumn(
                  label: Expanded(
                    child: Text(
                      'Employee ID',
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
                      'Employee Name',
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
                      'Department',
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
                      'Basic Salary',
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
                      'Allowances',
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
                      'Deductions',
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
                      'Net Pay',
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
                      'End-of-Service Benefit',
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
                      'Pay Date',
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
                      'Payment Method',
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
                      'Status',
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
                    DataCell(Text('001')),
                    DataCell(Text('John Doe')),
                    DataCell(Text('Sales')),
                    DataCell(Text('\$3000')),
                    DataCell(Text('\$500')),
                    DataCell(Text('\$200')),
                    DataCell(Text('\$3300')),
                    DataCell(Text('\$XXX')),
                    DataCell(Text('MM/DD')),
                    DataCell(Text('Bank')),
                    DataCell(Text('Paid')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('002')),
                    DataCell(Text('Jane Smith')),
                    DataCell(Text('HR')),
                    DataCell(Text('\$2800')),
                    DataCell(Text('\$400')),
                    DataCell(Text('\$180')),
                    DataCell(Text('\$3020')),
                    DataCell(Text('\$XXX')),
                    DataCell(Text('MM/DD')),
                    DataCell(Text('Hand')),
                    DataCell(Text('Paid')),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(Text('003')),
                    DataCell(Text('William Johnson')),
                    DataCell(Text('Marketing')),
                    DataCell(Text('\$3200')),
                    DataCell(Text('\$450')),
                    DataCell(Text('\$220')),
                    DataCell(Text('\$3430')),
                    DataCell(Text('\$XXX')),
                    DataCell(Text('MM/DD')),
                    DataCell(Text('Bank')),
                    DataCell(Text('Paid')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
