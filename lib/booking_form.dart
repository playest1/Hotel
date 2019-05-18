import 'package:flutter/material.dart';

class BookingForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BookingFormState();
  }
}

class _BookingFormState extends State<BookingForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  int groupValue;

  @override
  Widget build(BuildContext context) {
    final double deviceWidth = MediaQuery.of(context).size.width;
    final double targetWidth = deviceWidth > 550.0 ? 500.0 : deviceWidth * 0.95;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Booking Form',
            style: TextStyle(color: Colors.black, fontSize: 25.0),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         fit: BoxFit.cover,
          //         colorFilter: ColorFilter.mode(
          //             Colors.black.withOpacity(0.5), BlendMode.dstATop),
          //         image: AssetImage('assets/room.jpeg'))),
          padding: EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Container(
              width: targetWidth,
              child: Form(
                key: _formKey,
                child: Theme(
                  data: ThemeData(primaryColor: Colors.black),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Text(
                        'Fullname',
                        style: TextStyle(fontSize: 18.0, color: Colors.grey),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        textCapitalization: TextCapitalization.sentences,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: 'Playest Chance',
                            hintStyle: TextStyle(color: Colors.grey[300]),
                            prefixIcon: Icon(Icons.person),
                            filled: true,
                            fillColor: Colors.white),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 18.0, color: Colors.grey),
                      ),
                      SizedBox(height: 10.0),
                      TextFormField(
                        style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: 'Ex +234 9038076410',
                            hintStyle: TextStyle(color: Colors.grey[300]),
                            prefixIcon: Icon(
                              Icons.phone,
                              color: Colors.grey[500],
                            ),
                            filled: true,
                            fillColor: Colors.white),
                        keyboardType: TextInputType.number,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Adult',
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.grey),
                                  ),
                                  SizedBox(height: 6.0),
                                  TextFormField(
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '2',
                                        labelStyle: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                        filled: true,
                                        fillColor: Colors.white),
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Child',
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.grey),
                                  ),
                                  SizedBox(height: 6.0),
                                  TextFormField(
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '0',
                                        labelStyle: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                        filled: true,
                                        fillColor: Colors.white),
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Check-In Date',
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.grey),
                                  ),
                                  SizedBox(height: 6.0),
                                  TextFormField(
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '1 Jan 2019',
                                        prefixIcon: Icon(Icons.date_range),
                                        labelStyle: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                        filled: true,
                                        fillColor: Colors.white),
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.0),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Durations',
                                    style: TextStyle(
                                        fontSize: 17.0, color: Colors.grey),
                                  ),
                                  SizedBox(height: 6.0),
                                  TextFormField(
                                    style: TextStyle(
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black87),
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.black)),
                                        hintText: '1 night(s)',
                                        prefixIcon: Icon(Icons.timelapse),
                                        labelStyle: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.bold),
                                        filled: true,
                                        fillColor: Colors.white),
                                    keyboardType: TextInputType.number,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'Free PickUp?',
                        style: TextStyle(
                            fontSize: 19.0, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.green,
                            onChanged: (int e) => something(e),
                            value: 1,
                            groupValue: groupValue,
                          ),
                          Text(
                            'Yes please. Pick me up on arrival',
                            style:
                                TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Radio(
                            activeColor: Colors.red,
                            onChanged: (int e) => something(e),
                            value: 2,
                            groupValue: groupValue,
                          ),
                          Text(
                            'No thanks. I\'ll make my way there',
                            style:
                                TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                          ),
                        ],
                      ),
                      SizedBox(height: 15.0),
                      Container(
              // color: Colors.grey[200],
              padding: EdgeInsets.only(
                  top: 10.0, bottom: 17.0, left: 22.0, right: 22.0),
              child: RaisedButton(
                color: Colors.yellow[700],
                padding: EdgeInsets.symmetric(vertical: 20.0),
                elevation: 2.0,
                shape: StadiumBorder(),
                child: Text(
                  'Book Now',
                  style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: 1.6, wordSpacing: 1.5),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BookingForm()));
                },
              ),
            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void something(int e) {
    setState(() {
      if (e == 1) {
        groupValue = 1;
      } else if (e == 2) {
        groupValue = 2;
      }
    });
  }
}
