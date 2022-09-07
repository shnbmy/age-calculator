import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MainPage()));
}

class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);

  double age = 0.0;
  var chosenYear;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  /* void _showPicker() {
    showDatePicker(
            context: context,
            firstDate: DateTime(1920), // earliest date can track back
            initialDate: DateTime(2023), // default date whe dialog is open
            lastDate: DateTime.now())
        .then((DateTime dt) {
      // now date - end point for selection
      setState(() {
        chonsenYear = dt.year
      });
    })
    ;

  }
  */

  void showPicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime(1920),
        firstDate: DateTime(2023),
        lastDate: DateTime.now());

    print('hello'); // .then((DateTime("dt")) => "dt".year)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
          elevation: 0,
          title: Text('Age Calculator',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
          backgroundColor: Colors.purple[200]),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: showPicker, //{print('hello');},
              child: Text('Enter year of birth',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  )),
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.black, width: 2.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text('You are 10 years old',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
