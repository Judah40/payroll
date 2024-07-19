import 'package:flutter/material.dart';

class side_bar extends StatelessWidget {
  const side_bar({super.key, required this.onButtonPressed});

  final Function(int) onButtonPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Container(
          color: const Color.fromARGB(255, 119, 52, 0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    const DrawerHeader(
                      decoration:
                          BoxDecoration(color: Color.fromARGB(255, 119, 52, 0)),
                      child: Center(child: Text("Header")),
                    ),
                    ListTile(
                        leading:
                            const Icon(Icons.dashboard, color: Colors.white, ),
                        title: const Text(
                          "Dashboard",
                          style: TextStyle(color: Colors.white, fontFamily:'' ),
                        ),
                        onTap: () => {onButtonPressed(0)}),
                    ListTile(
                        leading: const Icon(Icons.verified_user,
                            color: Colors.white),
                        title: const Text(
                          "Employee",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () => {onButtonPressed(1)}),
                    ListTile(
                        leading: const Icon(
                          Icons.money,
                          color: Colors.white,
                        ),
                        title: const Text(
                          "Payroll",
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () => {onButtonPressed(2)}),
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
