import 'package:doc/models/arealist.dart';
import 'package:doc/providers/doctorarealist.dart';
import 'package:doc/screens/selection.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ArealistProvider status = ArealistProvider();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        FutureProvider(
            create: (BuildContext context) => status.getStatus(),
            catchError: (context, error) {
              print(error.toString());
            })
      ],
      child: MaterialApp(
        home: SelectionPage(),
        theme: ThemeData(
            // focusColor: Colors.red,
            appBarTheme: AppBarTheme(color: Colors.teal)),
      ),
    );
  }
}
