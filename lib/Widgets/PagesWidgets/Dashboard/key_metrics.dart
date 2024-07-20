import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyObject {
  final String title;
  final int amount;
  final Widget icons;
  MyObject({required this.title, required this.amount, required this.icons});
}

List<MyObject> objects = [
  MyObject(
      title: "Net Payroll",
      amount: 2222,
      icons: Icon(
        Icons.money,
        color: Colors.amber[900],
        size: 18,
      )),
  MyObject(
      title: "Total Employee",
      amount: 300,
      icons: Icon(
        Icons.supervised_user_circle_rounded,
        color: Colors.amber[900],
        size: 18,
      )),
  MyObject(
      title: "Deductions",
      amount: 20,
      icons: Icon(
        Icons.percent,
        color: Colors.amber[900],
        size: 18,
      )),
  MyObject(
      title: "Total Payroll Cost",
      amount: 30000,
      icons: Icon(
        Icons.money,
        color: Colors.amber[900],
        size: 18,
      )),
];

Widget buildObjectCard(MyObject object) {
  return Container(
    width: 1000,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 5,
          blurRadius: 7,
        )
      ],
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //main column
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(object.title,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[500])),
              Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.amber[200]),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: object.icons,
                  ))
            ],
          ),
          Row(
            children: [
              Text(
                object.amount.toString(),
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ],
          ),
          const Row(
            children: [],
          )
        ],
      ),
    ),
  );
}

class key_metrics extends StatelessWidget {
  const key_metrics({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      height: 270,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 2,
          crossAxisSpacing: 10.0, // Horizontal gap between items
          mainAxisSpacing: 10.0,
        ),
        itemCount: objects.length,
        itemBuilder: (context, index) {
          return buildObjectCard(objects[index]);
        },
      ),
    );
  }
}
