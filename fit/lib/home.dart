import 'package:fit/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  Color cardClr = Color(0xff101F33);
  int weight = 60;
  int age = 22;
  int height = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 14, 28),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(children: [
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              color:
                                  isMale == true ? Colors.pinkAccent : cardClr,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.male,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Male",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          flex: 5,
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                isMale = false;
                              });
                            },
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              color:
                                  isMale == false ? Colors.pinkAccent : cardClr,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "Female",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ]),
                  )),
              Expanded(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      color: cardClr,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEIGHT",
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                "$height",
                                style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SliderTheme(
                              data: SliderTheme.of(context).copyWith(
                                thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0,
                                ),
                                overlayShape: RoundSliderOverlayShape(
                                  overlayRadius: 30,
                                ),
                                thumbColor: Colors.deepPurpleAccent,
                                overlayColor: Colors.pink,
                              ),
                              child: Slider(
                                  min: 50.0,
                                  max: 210.0,
                                  value: height.toDouble(),
                                  onChanged: (double value) {
                                    setState(() {
                                      height = value.toInt();
                                    });
                                  }))
                        ],
                      ),
                    ),
                  )),
              Expanded(
                  flex: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 5,
                            child: Card(
                              color: cardClr,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Weight',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    '$weight',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 45),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (weight > 0) {
                                              weight--;
                                            }
                                          });
                                        },
                                        backgroundColor: Colors.pink[100],
                                        child: Icon(Icons.remove),
                                        isExtended: true,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        backgroundColor: Colors.pink[100],
                                        child: Icon(Icons.add),
                                        isExtended: true,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 5,
                            child: Card(
                              color: cardClr,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Age',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    '$age',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 45),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            if (age > 0) {
                                              age--;
                                            }
                                          });
                                        },
                                        backgroundColor: Colors.pink[100],
                                        child: Icon(Icons.remove),
                                        isExtended: true,
                                      ),
                                      FloatingActionButton(
                                        onPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        backgroundColor: Colors.pink[100],
                                        child: Icon(Icons.add),
                                        isExtended: false,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 2,
                  child: InkWell(
                    onTap: () {
                      var heightSquare = height * height / 10000;
                      var result = weight / heightSquare;

                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('BMI Result'),
                              content: Column(
                                children: [
                                  Text(
                                    "${result.toStringAsFixed(0)}",
                                    style: TextStyle(color: Colors.deepPurple),
                                  )
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.all(3),
                      color: Colors.pinkAccent,
                      alignment: Alignment.center,
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
