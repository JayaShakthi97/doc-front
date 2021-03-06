import 'package:doc/models/arealist.dart';
import 'package:doc/providers/doctorarealist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:doc/screens/patient_form.dart';
import 'package:provider/provider.dart';
// import 'package:navigate/pages/third.dart';

class Timeslots extends StatefulWidget {
  //final ArealistProvider status = ArealistProvider();
  @override
  _TimeslotsState createState() => _TimeslotsState();
}

class _TimeslotsState extends State<Timeslots> {
  String _date = "Not set";
  
   //Arealist status;

  @override
  Widget build( BuildContext context) {
    final Arealist status = Provider.of<Arealist>(context);
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/logo/sampleLogo.png',
              fit: BoxFit.contain,
              height: 32,
            ),
          ],
        ),
      )),

      // ),
      body: Column(
        children: <Widget>[
          // Expanded(
          //   flex: 2,
          //   child:
          Container(
            height: 80.0,
            color: Colors.teal,
            child: Row(
              children: <Widget>[
                //  Container(
                //    color: Colors.red,
                //    child:
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        //'Dr. Nobody Noman (MBBS)', //Set Doctor Name
                        status.docName.toString(),
                        style: TextStyle(
                          fontFamily: 'Louis',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17.0, 5.0, 0, 0),
                      child: Text(
                        'No.20, Nowhere, Noland', //Set Doctor Address
                        style: TextStyle(
                          color: Colors.teal[100],
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                //  )
                // ),
              ],
            ),
          ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child:
          Container(
            height: 70.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Colors.teal,
                  Colors.teal[900],
                ],
              ),
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        'Set Date',
                        style: TextStyle(
                          fontFamily: 'Sansation',
                          color: Colors.teal[200],
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    )),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: RaisedButton(
                      color: Colors.teal[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      elevation: 4.0,
                      onPressed: () {
                        DatePicker.showDatePicker(context,
                            theme: DatePickerTheme(
                              containerHeight: 210.0,
                            ),
                            showTitleActions: true,
                            minTime: DateTime(2020, 1, 1),
                            maxTime: DateTime(2030, 12, 31), onConfirm: (date) {
                          print('confirm $date');
                          _date = '${date.year} - ${date.month} - ${date.day}';
                          setState(() {});
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 4.0),
                                        child: Icon(
                                          Icons.event,
                                          size: 18.0,
                                          color: Colors.teal,
                                        ),
                                      ),
                                      Text(
                                        "$_date",
                                        style: TextStyle(
                                            fontFamily: 'Louis',
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18.0),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Text(
                              "Change",
                              style: TextStyle(
                                  fontFamily: 'Sansation',
                                  color: Colors.red[600],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 12,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.teal[900],
                    Colors.black,
                  ],
                ),
              ),
              child: ListView.builder(
                  shrinkWrap: true,
                  // itemCount: state.bestContributeCountry.length,
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 75,
                      color: Colors.transparent,
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        // shrinkWrap: true,
                        children: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                // flex: 5,
                                child: Container(
                                  height: 60.0,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: RaisedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    PatientForm())); // patient_form.dart
                                      },
                                      color: Colors.teal,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Container(
                                          width: 180,
                                          child: Center(
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                Text(
                                                  '8:15am - 8:30am',
                                                  style: TextStyle(
                                                    fontFamily: 'Louis',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  '2 Slots Available',
                                                  style: TextStyle(
                                                    fontFamily: 'Louis',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.teal[200],
                                                  ),
                                                ),
                                              ])),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                // flex: 5,
                                child: Container(
                                  height: 60.0,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: RaisedButton(
                                      onPressed: () {},
                                      color: Colors.teal,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(5.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(0),
                                        child: Container(
                                          width: 180,
                                          child: Center(
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                Text(
                                                  '10:15am - 10:30am',
                                                  style: TextStyle(
                                                    fontFamily: 'Louis',
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.teal[800],
                                                  ),
                                                ),
                                                Text(
                                                  'Not Available',
                                                  style: TextStyle(
                                                    fontFamily: 'Louis',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.red[200],
                                                  ),
                                                ),
                                              ])),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
