import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payrollapp/Widgets/PagesWidgets/Dashboard/Calendar.dart';
import 'package:payrollapp/Widgets/PagesWidgets/Dashboard/bar_charts.dart';
import 'package:payrollapp/Widgets/PagesWidgets/Dashboard/key_metrics.dart';
import 'package:payrollapp/Widgets/PagesWidgets/Dashboard/pie_chart.dart';
import 'package:payrollapp/Widgets/PagesWidgets/Dashboard/table.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({super.key});

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: buildContent(context, constraints),
          );
        },
      ),
    );
  }
}

Widget buildContent(BuildContext context, BoxConstraints constraints) {
  return Container(
      width: constraints.maxWidth,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Added to align children to the start

              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Row(
                    children: [
                      Text("Analytics",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w200),
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
                        image: const DecorationImage(
                          image: AssetImage("assets/Backgrounds/backgroun.jpg"),
                          fit: BoxFit
                              .cover, //Make the image cover the entire container
                        ),
                      ),
                      child: Text("data")),
                ),
                Container(
                  child: Row(
                    children: [
                    const  Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: const key_metrics(),
                      ),
                      Expanded(
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
                        width: 400,
                        height: 270,
                        child: BarChartSample(),
                      ))

                      // Expanded(child: bar_chart()),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 8.0),
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
                        width: 400,
                        height: 380,
                        child: const Clendar(),
                      ),
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 8.0),
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
                        height: 380,
                        child: PieChartSample(),
                      ),
                    ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Container(
                    width: double.infinity,
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
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: table(),
                    ),
                  ),
                )
              ]),
        ),
      ));
}
