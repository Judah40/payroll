import 'package:flutter/material.dart';
import 'package:payrollapp/Widgets/HomeWidgets/side_bar.dart';
import 'package:payrollapp/Pages/Dasboard.dart';
import 'package:payrollapp/Pages/Employee.dart';
import 'package:payrollapp/Pages/Payroll.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  // ignore: unused_field
  int _selectedIndex = 0;
  //screens
// ignore: unused_field
  final List<Widget> _pages = [
    const Dasboard(),
    const Employee(),
    const Payroll()
  ];
  void callbackstring(value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: [
        SizedBox(
          width: 250,
          height: MediaQuery.of(context).size.height,
          child: Container(
              color: Colors.amber[900], child: side_bar(onButtonPressed: callbackstring,value:_selectedIndex )),
        ),
        Expanded(child: _pages[_selectedIndex])
      ]),
    );
  }
}
