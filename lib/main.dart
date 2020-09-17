import 'package:flutter/material.dart';
import 'package:personal_expenses_flutter/widgets/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  child: Card(
                    color: Colors.blue,
                    child: Text(
                      'Chart',
                    ),
                    elevation: 5,
                  ),
                ),
                UserTransaction()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
