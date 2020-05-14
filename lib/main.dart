import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

const trialColor = Color.fromRGBO(55, 55, 55, 1);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Location UI',
      theme: ThemeData.dark(),
      home: homeScreen(),
    );
  }
}

class homeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 450,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://newsum.in/wp-content/uploads/2020/04/455912-laurentp-disneyland-paris-scaled.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 370),
                child: Icon(
                  Icons.keyboard_voice,
                  size: 35,
                  color: trialColor,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 425, left: 40),
                height: 70,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: trialColor),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Icon(
                        Icons.wb_cloudy,
                        color: Colors.lightBlueAccent.withOpacity(0.9),
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'It\'s Now 32deg F',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'In DisneyLand Paris',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Icon(
                      Icons.navigation,
                      size: 35,
                      color: Colors.lightBlueAccent,
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Container(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(60)),
                  child: Icon(
                    Icons.my_location,
                    color: Colors.green,
                    size: 30,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(60)),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(60)),
                  child: Icon(
                    Icons.music_note,
                    color: Colors.red,
                    size: 30,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(60)),
                  child: Icon(
                    Icons.event_note,
                    color: Colors.deepPurpleAccent,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30, right: 110),
            child: Text(
              'Sunday,Oct 11',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'The Time is 12:00 and you have 20% battery left\nCloudy Weather and slightly warm temperature',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white70),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 80),
            width: 380,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueAccent),
                  child: Center(
                    child: Text(
                      'CALL',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black87.withOpacity(0.2)),
                  child: Center(
                    child: Text(
                      'TEXT',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black87.withOpacity(0.2)),
                  child: Center(
                    child: Text(
                      'EMAIL',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
