import 'package:flutter/material.dart';
import 'package:payrollapp/Widgets/PagesWidgets/Employee/table.dart';

class Employee extends StatefulWidget {
  const Employee({super.key});

  @override
  State<Employee> createState() => _EmployeeState();
}

class _EmployeeState extends State<Employee> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {}); // Refresh the UI when the text changes
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
                  Text("Employee",
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
                child: Image(
                  image: AssetImage("assets/Backgrounds/backgroun.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildStatCard("Total Employees", "150",
                      Icons.supervised_user_circle_rounded, Colors.amber[200]!),
                  buildStatCard("Active Employees", "140",
                      Icons.supervised_user_circle_rounded, Colors.amber[200]!),
                  buildStatCard("Departments", "5",
                      Icons.supervised_user_circle_rounded, Colors.amber[200]!),
                  buildStatCard("New", "10",
                      Icons.supervised_user_circle_rounded, Colors.amber[200]!),
                ],
              ),
            ),
            // Search bar with icons and Add Employee button
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.grey),
                          suffixIcon: _searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear,
                                      color: Colors.grey),
                                  onPressed: () {
                                    _searchController.clear();
                                  },
                                )
                              : null,
                          hintText: 'Search...',
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.all(16.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  SizedBox(
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        // Action for Add Employee button
                      },
                      child: const Text('Add Employee'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber[900],
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Other content here
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                  child: Container(
                      width: constraints.maxWidth,
                      // color: Colors.red,
                      child: table())),
            )
          ],
        ),
      ),
    );
  }

  Widget buildStatCard(String title, String count, IconData icon, Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        width: 250,
        height: 100,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[500],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: color,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(icon),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Center(
                  child: Text(
                    count,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Employee(),
  ));
}
