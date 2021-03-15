import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

enum ShiftValues { ExtendShift, EndShift }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Menu Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RaisedButton(
          child: Text(
            'Show Pop-up',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: Colors.blue,
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) => _buildPopupDialog(context),
            );
          },
        ),
      ),
    );
  }

  Widget _buildPopupDialog(BuildContext context) {
    ShiftValues _shift = ShiftValues.ExtendShift;

    return new AlertDialog(
      title: const Text('Manage Shift', style: TextStyle(color: Colors.blue)),
      content: new Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: const Text('Extend Shift'),
            leading: Radio(
              value: ShiftValues.ExtendShift,
              groupValue: _shift,
              onChanged: (ShiftValues value) {
                setState(() {
                  _shift = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('End Shift'),
            leading: Radio(
              value: ShiftValues.EndShift,
              groupValue: _shift,
              onChanged: (ShiftValues value) {
                setState(() {
                  _shift = value;
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

void setState(Null Function() param0) {}
