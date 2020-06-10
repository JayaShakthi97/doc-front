import 'package:doc/screens/timeslots.dart';
import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {
  // SectionPage({Key key, this.title}) : super(key: key);
  SelectionPage({Key key}) : super(key: key);

  // final String title;

  @override
  _SelectionPageState createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      body: Center(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(children: <Widget>[
            Expanded(
                flex: 4,
                child: Wrap(
                  spacing: 10.0,
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.all(100.0),
                      height: 280.0,

                      decoration: BoxDecoration(
                        color: Colors.teal,
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.only(
                            bottomLeft: Radius.elliptical(200, 50),
                            bottomRight: Radius.elliptical(200, 50)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black38,
                            blurRadius: 5.0,
                            spreadRadius: 1.0, 
                            offset: Offset(0.0,5.0,),
                          )
                        ],
                      ),

                      child: Center(
                        child: Image(
                          image: AssetImage('assets/logo/sampleLogo.png'),
                          height: 100.0,
                          width: 150.0,
                        ),
                      ),
                    ), //widget
                  ],
                )
                //
                ),
            Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 140,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'District',
                                  style: TextStyle(
                                    color: Colors.teal[100],
                                    fontFamily: 'Louis',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                width: 180,
                                height: 30,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.teal[800],
                                    borderRadius: BorderRadius.circular(5)),
                                child: DropdownButton<String>(
                                    // value: dropdownValue,
                                    isExpanded: true,
                                    icon: Icon(Icons.expand_more),
                                    iconEnabledColor: Colors.teal[100],
                                    iconSize: 20,
                                    underline: SizedBox(),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        // dropdownValue = newValue;
                                      });
                                    },
                                    hint: Text('Select District',
                                        style: TextStyle(
                                          fontFamily: 'Louis',
                                          color: Colors.teal[100],
                                          fontWeight: FontWeight.w100,
                                          fontSize: 17.0,
                                        )),
                                    items: <String>[
                                      'Colombo',
                                      'Kaluthara',
                                      'Gampaha',
                                      'Kandy'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()),
                              ),
                              // )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 140,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Area',
                                  style: TextStyle(
                                    color: Colors.teal[100],
                                    fontFamily: 'Louis',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                width: 180,
                                height: 30,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.teal[800],
                                    borderRadius: BorderRadius.circular(5)),
                                child: DropdownButton<String>(
                                    // value: dropdownValue,
                                    isExpanded: true,
                                    icon: Icon(Icons.expand_more),
                                    iconEnabledColor: Colors.teal[100],
                                    iconSize: 20,
                                    underline: SizedBox(),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        // dropdownValue = newValue;
                                      });
                                    },
                                    hint: Text('Select Area',
                                        style: TextStyle(
                                          fontFamily: 'Louis',
                                          color: Colors.teal[100],
                                          fontWeight: FontWeight.w100,
                                          fontSize: 17.0,
                                        )),
                                    items: <String>[
                                      'Kaluthara North',
                                      'Kaluthara South'
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()),
                              ),

                              // )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 140,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Doctor',
                                  style: TextStyle(
                                    color: Colors.teal[100],
                                    fontFamily: 'Louis',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Container(
                                width: 180,
                                height: 30,
                                alignment: Alignment.centerLeft,
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.teal[800],
                                    borderRadius: BorderRadius.circular(5)),
                                child: DropdownButton<String>(
                                    // value: dropdownValue,
                                    isExpanded: true,
                                    icon: Icon(Icons.expand_more),
                                    iconEnabledColor: Colors.teal[100],
                                    iconSize: 20,
                                    underline: SizedBox(),
                                    onChanged: (String newValue) {
                                      setState(() {
                                        // dropdownValue = newValue;
                                      });
                                    },
                                    hint: Text('Select Doctor',
                                        style: TextStyle(
                                          fontFamily: 'Louis',
                                          color: Colors.teal[100],
                                          fontWeight: FontWeight.w100,
                                          fontSize: 17.0,
                                        )),
                                    items: <String>['Doctor 1', 'Doctor 2']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList()),
                              ),

                              // )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Timeslots()));
                        },
                        color: Colors.teal,
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            width: 60,
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Next',
                                  style: TextStyle(
                                    fontFamily: 'Louis',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons.navigate_next,
                                  color: Colors.white,
                                  size: 22,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Doctor Booking App (Disclamer)\n\n',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                                fontFamily: 'Louis',
                                color: Colors.teal[200])),
                        TextSpan(
                            text:
                                'this is a doc boking app. this is a doc boking app. this is a doc boking app. this is a doc boking app. ',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Louis',
                                color: Colors.teal[300]))
                      ],
                    ),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
