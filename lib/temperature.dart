import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:kishan_suvidha/side_bar.dart';


class TemperaturePage extends StatefulWidget {
  const TemperaturePage({super.key});

  @override
  State<TemperaturePage> createState() => _TemperaturePageState();
}

class _TemperaturePageState extends State<TemperaturePage> {
  double heating = 12;

  // double fan = 15;
  bool isPumpOn = false;
  bool isTimerVisible = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade200,
      key: _scaffoldKey,
      drawer: SidebarPage(),
      body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 18, left: 24, right: 24),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: const RotatedBox(
                      quarterTurns: 135,
                      child: Icon(
                        Icons.bar_chart_rounded,
                        color: Colors.green,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Expanded(
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      // const SizedBox(
                      //   height: 32,
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 100,
                                    lineWidth: 14,
                                    percent: 0.75,
                                    progressColor: Colors.green.shade800,
                                    center: const Text(
                                      '26\u00B0',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  const Center(
                                    child: Text(
                                      'TEMPERATURE',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 100,
                                    lineWidth: 14,
                                    percent: 0.75,
                                    progressColor: Colors.green.shade800,
                                    center: const Text(
                                      '29\u{2052}',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  const Center(
                                    child: Text(
                                      'HUMIDITY',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  CircularPercentIndicator(
                                    radius: 100,
                                    lineWidth: 14,
                                    percent: 0.75,
                                    progressColor: Colors.green.shade800,
                                    center: const Text(
                                      '39\u{2052}',
                                      style: TextStyle(
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 32,
                                  ),
                                  const Center(
                                    child: Text(
                                      'MOISTURE',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),


                      const SizedBox(
                        height: 32,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {

                              },
                              child: Text('Water Pump'),
                            ),

                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 32,
                      ),

                      const SizedBox(
                        height: 32,
                      ),

                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                print('VALVE 1 IS ON..');
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      20), // Adjust the radius as needed
                                ),
                              ),
                              child: _fan(title: 'VALVE 1', isActive: true)),
                          ElevatedButton(
                            onPressed: () {
                              print('VALVE 2 IS ON..');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Adjust the radius as needed
                              ),
                            ),
                            child: _fan(title: 'VALVE 2', isActive: true),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              print('VALVE 3 IS ON..');
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    20), // Adjust the radius as needed
                              ),
                            ),
                            child: _fan(title: 'VALVE 3', isActive: true),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ))
            ]),
          )),
    );
  }

  Widget _fan({
    required String title,
    bool isActive = false,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
            color: isActive ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Image.asset(
              isActive ? 'assets/images/fan-2.png' : 'assets/images/fan-1.png'),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          title,
          style: TextStyle(color: isActive ? Colors.black87 : Colors.black54),
        )
      ],
    );
  }


}