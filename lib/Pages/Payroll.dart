import 'package:flutter/material.dart';
import 'package:payrollapp/Widgets/PagesWidgets/Payroll/table.dart';

class Payroll extends StatefulWidget {
  const Payroll({super.key});

  @override
  State<Payroll> createState() => _PayrollState();
}

class _PayrollState extends State<Payroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: buildContent(context, constraints),
            ),
          );
        },
      ),
    );
  }
}

Widget buildContent(BuildContext context, BoxConstraints constraints) {
  return SizedBox(
    width: constraints.maxWidth,
    height: MediaQuery.of(context).size.height,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Row(
              children: [
                Text("Payroll",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Preview",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Container(
              width: constraints.maxWidth,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(4.0),
              ),
              child: const Image(
                image: AssetImage("assets/Backgrounds/backgroun.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: table(),
            ),
          )
        ],
      ),
    ),
  );
}
