import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class side_bar extends StatelessWidget {
  const side_bar(
      {super.key, required this.onButtonPressed, required this.value});

  final Function(int) onButtonPressed;
  final int value;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Container(
          color: Color.fromARGB(255, 94, 41, 0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const DrawerHeader(
                      decoration:
                          BoxDecoration(color: Color.fromARGB(255, 94, 41, 0)),
                      child: Center(
                        child: Column(children: [
                          Icon(
                            Icons.supervised_user_circle_sharp,
                            size: 60,
                            color: Colors.white,
                          )
                        ]),
                      ),
                    ),
                      Container(
                        decoration: BoxDecoration(
                            color: value == 0 ? Colors.brown[900] : null,
                            border:const Border(left: BorderSide(color: Colors.brown, width: 5)),
                          ),
                        child: ListTile(
                          tileColor: Colors.brown[900],
                          leading: const Icon(
                            Icons.dashboard,
                            color: Colors.white,
                          ),
                          title: const Text(
                            "Dashboard",
                            style:
                                TextStyle(color: Colors.white, fontFamily: ''),
                          ),
                          onTap: () => {onButtonPressed(0)},
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: value == 1 ? Colors.brown[900] : null,
                            borderRadius: BorderRadius.circular(6)),
                        child: ListTile(
                            leading: const Icon(Icons.verified_user,
                                color: Colors.white),
                            title: const Text(
                              "Employee",
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () => {onButtonPressed(1)}),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: value == 2 ? Colors.brown[900] : null,
                            borderRadius: BorderRadius.circular(6)),
                        child: ListTile(
                            leading: const Icon(
                              Icons.money,
                              color: Colors.white,
                            ),
                            title: const Text(
                              "Payroll",
                              style: TextStyle(color: Colors.white),
                            ),
                            onTap: () => {onButtonPressed(2)}),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                width: 200,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6))),
                    onPressed: () {},
                    label: const Text('Sign Out'),
                    icon: const Icon(Icons.logout),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
