import 'package:flutter/material.dart';
import 'package:kingslake_popup_screen/pop_up_dialog_widget.dart';

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
  ShiftValues _shift;
  int i = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _shift = ShiftValues.ExtendShift;
  }

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
                context: context, builder: (context) => ShiftPopUpWidget());
          },
        ),
      ),
    );
  }
}
