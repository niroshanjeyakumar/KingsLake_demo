import 'package:flutter/material.dart';

enum ShiftValues { ExtendShift, EndShift }

class ShiftPopUpWidget extends StatefulWidget {
  @override
  _ShiftPopUpWidgetState createState() => _ShiftPopUpWidgetState();
}

class _ShiftPopUpWidgetState extends State<ShiftPopUpWidget> {
  ShiftValues _shift;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _shift = ShiftValues.EndShift;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Manage Shift', style: TextStyle(color: Colors.blue)),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: const Text('Extend Shift'),
            leading: Radio<ShiftValues>(
              value: ShiftValues.ExtendShift,
              groupValue: _shift,
              onChanged: (ShiftValues value) {
                setState(() {
                  _shift = ShiftValues.ExtendShift;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('End Shift'),
            leading: Radio<ShiftValues>(
              value: ShiftValues.EndShift,
              groupValue: _shift,
              onChanged: (ShiftValues value) {
                setState(() {
                  _shift = ShiftValues.EndShift;
                });
              },
            ),
          ),
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
