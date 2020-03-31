// import 'dart:js';

import 'package:flutter/material.dart';

import '../create_job.dart';
import '../custom_button.dart';
import '../job_list.dart';

class MainPage extends StatefulWidget {
  
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String clockInOutTxt = 'Clock In';
  var inTime;

  void _createJob() {
    // print('Creating Job');
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => CreateJob()));
  }

  void _deleteJob() {
    print('Deleting job');
  }

  _clockIn() {
    // When the clock in button is clicked it should...

    // 1. mark the current time.
    var dateInTime = new DateTime.now();
    print("clock in: " + dateInTime.toIso8601String());
    // 2. save time to database.

    // 3. change text to clock out.
    setState(() {
      this.inTime = dateInTime;
      this.clockInOutTxt = 'Clock Out';
    });
    return dateInTime.toString();  
  }

  _clockOut() {
    var dateOutTime = new DateTime.now();
    print("Clock Out: " + dateOutTime.toString());
    print("Clock Duration: " + dateOutTime.difference(inTime).inSeconds.roundToDouble().toString());
    setState((){
      this.clockInOutTxt = 'Clock In';
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        top: 75, left: 25, right: 25, bottom: 25),
                    child: JobList()),
                SizedBox(
                  height: 75,
                ),
                Container(
                  child: CustomButton(
                    buttonText: clockInOutTxt,
                    buttonWidth: 200,
                    clickEvent: () {
                      if (this.clockInOutTxt == 'Clock In'){
                        _clockIn();
                      } else {
                        _clockOut();
                      }
                    },
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      CustomButton(
                        buttonText: 'Create Job',
                        buttonWidth: 150,
                        clickEvent: _createJob,
                      ),
                      CustomButton(
                        buttonText: 'Delete Job',
                        buttonWidth: 150,
                        clickEvent: _deleteJob,
                      ),
                    ],
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
