import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MSQvalue extends StatefulWidget {
  _ClicktoValue createState() => _ClicktoValue();
}

class _ClicktoValue extends State<MSQvalue> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  bool istext = false;
  TextEditingController _textController = TextEditingController();

  var amounts = [
    {"full": "33MSQ", "numeric": "33"},
    {"full": "330MSQ", "numeric": "330"},
    {"full": "3,300MSQ", "numeric": "3300"},
    {"full": "33,000MSQ", "numeric": "33000"},
  ];

  @override
  void initState() {
    super.initState();
    // Perform initialization tasks here
    // This method is called once when the widget is inserted into the widget tree
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: Text('MSQ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back)),
      ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '1 MSQ App',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello guys',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Super Save won',
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: 35),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 20,
              color: Colors.black12,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      '안녕 얘들아',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: _textController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [LengthLimitingTextInputFormatter(10)],
                    cursorColor: Colors.blue,
                    onChanged: (text) {
                      // Check if the TextField has text and update istext accordingly
                      setState(() {
                        istext = text.isNotEmpty;
                      });
                    },
                    style: TextStyle(
                      fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black
                    ),
                    decoration: InputDecoration(
                      prefixIcon:
                          Icon(Icons.currency_rupee),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 2.0, // Border width
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                          width: 1.0, // Border width
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 36,
                          padding: EdgeInsets.only(
                              top: 6, right: 8, bottom: 6, left: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.lightBlueAccent),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _textController.text = amounts[0]["numeric"]!;
                                istext = true;
                              });
                            },
                            child: Text(
                                amounts[0]["full"]!,
                                style:TextStyle(
                                  fontSize: 16,fontWeight: FontWeight.w500
                                )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 36,
                            padding: EdgeInsets.only(
                                top: 6, right: 8, bottom: 6, left: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.lightBlueAccent),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _textController.text = amounts[1]["numeric"]!;
                                  istext = true;
                                });
                              },
                              child: Text(
                                  amounts[1]["full"]!,
                                  style:TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 36,
                            padding: EdgeInsets.only(
                                top: 6, right: 8, bottom: 6, left: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.lightBlueAccent),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _textController.text = amounts[2]["numeric"]!;
                                  istext = true;
                                });
                              },
                              child: Text(
                                  amounts[2]["full"]!,
                                  style:TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                  )
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Container(
                            height: 36,
                            padding: EdgeInsets.only(
                                top: 6, right: 8, bottom: 6, left: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.lightBlueAccent),
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _textController.text = amounts[3]["numeric"]!;
                                  istext = true;
                                });
                              },
                              child: Text(
                                  amounts[3]["full"]!,
                                  style:TextStyle(
                                    fontSize: 16,fontWeight: FontWeight.w500
                                  )
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Center(
              child: OutlinedButton(
                onPressed: () {
                  if (istext) {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      content: Text('Your Amount Received ',style: TextStyle(color: Colors.black)), // Replace with your desired message
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  } else {
                    final snackBar = SnackBar(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      content: Text('Please Field The Amount !',style: TextStyle(color: Colors.black)), // Message for empty TextField
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor:  istext ? Colors.blue : Colors.black12,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                  minimumSize: Size(150, 25),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                  ),
                ),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white), // Text color
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
