import 'package:doc/screens/receipt.dart';
import 'package:flutter/material.dart';
// import 'package:navigate/pages/third.dart';

class PatientForm extends StatefulWidget {
  PatientForm({Key key}) : super(key: key);

  @override
  _PatientFormState createState() => _PatientFormState();
}

class _PatientFormState extends State<PatientForm> {
  //  _formKey and _autoValidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _patientname;
  String _age;
  String _phone;

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: <Widget>[
          // Expanded(
          //   flex: 2,
          // child:
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
                        'Dr. Nobody Noman (MBBS)', //Set Doctor Name
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
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(17.0, 0, 8.0, 0),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal[200])),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Date : ',
                            style: TextStyle(
                              fontFamily: 'Sansation',
                              color: Colors.teal[200],
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            '2020 - 12 - 12', //set date
                            style: TextStyle(
                              fontFamily: 'Sansation',
                              color: Colors.teal[100],
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                  ),
                  // )
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(8.0, 0, 17.0, 0),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.teal[200])),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Time : ',
                            style: TextStyle(
                              fontFamily: 'Sansation',
                              color: Colors.teal[200],
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            '8:15am', //set time
                            style: TextStyle(
                              fontFamily: 'Sansation',
                              color: Colors.teal[100],
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              // children: <Widget>[
              child: Container(
                  //  width: 100,
                  // height: 700,
                  // color: Colors.yellow[200],
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
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'Please complete the form below',
                              style: TextStyle(
                                  color: Colors.red[400],
                                  fontFamily: 'Louis',
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.w600),
                            ),
                          )),
                      Container(
                          width: 350,
                          child: Form(
                              key: _formKey,
                              autovalidate: _autoValidate,
                              child: formPatient()))
                    ]),
                  ))
              // ],
              )
        ],
      ),
    );
  }

  Widget formPatient() {
    // FocusNode myFocusNode = new FocusNode();
    return new Column(
      children: <Widget>[
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Who make the reservation?',
                style: TextStyle(
                  fontFamily: 'Sansation',
                  color: Colors.teal[200],
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )),
        new TextFormField(
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Sansation',
          ),
          decoration: const InputDecoration(
            labelText: 'Name',
            labelStyle: TextStyle(
              color: Color(0xFFE0F2F1), //Colors.teal[200]
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal)),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xFF80CBC4)), //Colors.teal[200]
            ),
          ),
          keyboardType: TextInputType.text,
        ),
        Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Text(
                'Please enter patient details below.',
                style: TextStyle(
                  fontFamily: 'Sansation',
                  color: Colors.teal[200],
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                ),
              ),
            )),
        new TextFormField(
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Sansation',
          ),
          decoration: const InputDecoration(
            labelText: 'Patient Name*',
            labelStyle: TextStyle(
              color: Color(0xFFE0F2F1), //Colors.teal[200]
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal)),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xFF80CBC4)), //Colors.teal[200]
            ),
          ),
          keyboardType: TextInputType.text,
          validator: (String arg) {
            if (arg.isEmpty)
              return 'Name must not be Empty!';
            else
              return null;
          },
          onSaved: (String val) {
            _patientname = val;
          },
        ),
        new TextFormField(
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Sansation',
          ),
          decoration: const InputDecoration(
            labelText: 'ID Number',
            labelStyle: TextStyle(
              color: Color(0xFFE0F2F1), //Colors.teal[200]
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal)),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xFF80CBC4)), //Colors.teal[200]
            ),
          ),
          keyboardType: TextInputType.text,
        ),
        new TextFormField(
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Sansation',
          ),
          decoration: const InputDecoration(
            labelText: 'Age',
            labelStyle: TextStyle(
              color: Color(0xFFE0F2F1), //Colors.teal[200]
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal)),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xFF80CBC4)), //Colors.teal[200]
            ),
          ),
          keyboardType: TextInputType.text,
        ),
        new TextFormField(
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Sansation',
          ),
          decoration: const InputDecoration(
            labelText: 'Address',
            labelStyle: TextStyle(
              color: Color(0xFFE0F2F1), //Colors.teal[200]
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal)),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xFF80CBC4)), //Colors.teal[200]
            ),
          ),
          keyboardType: TextInputType.text,
        ),
        new TextFormField(
          style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Sansation',
          ),
          decoration: const InputDecoration(
            labelText: 'Mobile*',
            labelStyle: TextStyle(
              color: Color(0xFFE0F2F1), //Colors.teal[200]
            ),
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.teal)),
            focusedBorder: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: Color(0xFF80CBC4)), //Colors.teal[200]
            ),
          ),
          keyboardType: TextInputType.phone,
          validator: (String value) {
            String patttern = r'(^(?:[+0]9)?[0-9]{10}$)';
            RegExp regExp = new RegExp(patttern);
            if (value.length == 0) {
              return 'Please enter mobile number';
            } else if (!regExp.hasMatch(value)) {
              return 'Please enter valid mobile number';
            }
            return null;
          },
          // (String value) {
          //   if ((value.length == 10) && value.isEmpty)
          //     return 'Mobile number is Null or Incorrect!';
          //   else
          //     return null;
          // },
          onSaved: (String val) {
            _phone = val;
          },
        ),
        // TextField(
        //   decoration: InputDecoration(
        //       border: InputBorder.none, hintText: 'Enter a search term'),
        // ),
        new SizedBox(
          height: 10.0,
        ),

        Padding(
          padding: const EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ReceiptPage()));
            },
            color: Colors.teal[700],
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                width: 80,
                child: Center(
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      fontFamily: 'Louis',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        new SizedBox(
          height: 30.0,
        ),
      ],
    );
  }

  void _validateInputs() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState
          .save(); //data are valid - save data to out variables
    } else {
      setState(() {
        _autoValidate = true; //all data are not valid - start auto validation.
      });
    }
  }
}
