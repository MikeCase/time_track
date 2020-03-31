import 'package:flutter/material.dart';

import 'custom_button.dart';

class CreateJob extends StatefulWidget {
  CreateJob({Key key}) : super(key: key);

  @override
  _CreateJobState createState() => _CreateJobState();
}

class _CreateJobState extends State<CreateJob> {
  TextEditingController _controller;
  

  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _createJob() {
    print('Created job');
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Job Name',
                  ),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 175),
                CustomButton(
                  buttonWidth: 200,
                  buttonText: 'Create Job',
                  clickEvent: _createJob,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
