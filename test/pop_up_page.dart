import 'package:flutter/material.dart';

class PopUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new AlertDialog(
      title: const Text('Manage Shift', style: TextStyle(color: Colors.blue)),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Leader ID',
              ),
            ),
          ),
          new Container(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Reason',
              ),
            ),
          ),
          new Container(
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Minutes',
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        new FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: RaisedButton(
            child: Text(
              'Confirm',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.blue,
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
