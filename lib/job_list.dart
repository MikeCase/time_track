import 'package:flutter/material.dart';

class JobList extends StatefulWidget {
  @override
  _JobListState createState() => _JobListState();
}

class _JobListState extends State<JobList> {
  String _dropDownValue = 'Job 1';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          DropdownButton(
            isExpanded: true,
            value: _dropDownValue,
            icon: Icon(Icons.arrow_drop_down_circle),
            iconEnabledColor: Colors.lightBlue,
            iconSize: 24,
            elevation: 16,
            style: TextStyle(
              color: Colors.indigo[900],
              fontSize: 26,
            ),
            underline: Container(
              width: double.infinity,
              height: 2,
              color: Colors.indigoAccent[700],
            ),
            items: <String>['Job 1', 'Job 2', 'Job 3']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String value) {
              setState(() {
                _dropDownValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}
