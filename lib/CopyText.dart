import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:bottom_picker/bottom_picker.dart';

class CopyText extends StatefulWidget {
  _CopyText createState() => _CopyText();
}

class _CopyText extends State<CopyText> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<State> key = GlobalKey<State>();

  void updateText(String newText) {
    setState(() {
      searchText = newText;
      istext = searchText.isNotEmpty; // Update istext here
    });
  }
  final TextEditingController controllerSearch = TextEditingController();
  final int maxLength = 50;
  String searchText = "qupnmcxn124fdfjwklajdk";
  bool istext = false;

  void copyToClipboard(String text) {
    controllerSearch.text = text;
    controllerSearch.selection = TextSelection(baseOffset: 0, extentOffset: text.length);
    Clipboard.setData(ClipboardData(text: controllerSearch.text,));
  }

  @override
  void initState() {
    super.initState();
  }

  clearText(){
    controllerSearch.clear();
    setState(() {
      istext = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: scaffoldKey,
          appBar: AppBar(
            title: const Text(
                'Copy Text',
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 25,right: 20,left: 20,bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(6)),
                  child: Row(
                    children: [
                      Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                          ),
                          child: IconButton(onPressed: (){
                            copyToClipboard(searchText);
                          },
                              icon:const Icon(Icons.copy,color: Colors.white),
                          )
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            controllerSearch.text = searchText;
                            istext = true;
                            copyToClipboard(searchText);
                          });
                        },
                        child: const Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Cick to copy Token'),
                              Text(
                                  'qupnmcxn124fdfjwklajdk',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                      Expanded(child: Container()),
                      const Icon(Icons.close),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                    'Account Token',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black26,  width: 0.5),
                      borderRadius: BorderRadius.circular(5)),
                  child: TextField(
                    controller: controllerSearch,
                    maxLength: maxLength,
                    decoration: InputDecoration(
                      suffixIcon: searchText.isNotEmpty
                          ?  IconButton(
                        icon:const Icon(Icons.close,color: Colors.black),
                        onPressed: () {
                          clearText();
                        },
                      )
                          : null,
                      prefixIcon: const Icon(Icons.search),
                      // Icon to the left of the text
                      hintText: 'TXID',
                      hintStyle: const TextStyle(
                        color: Colors.black26,
                        fontSize: 16, // Customize the text color
                      ),
                      counterText: '',
                      // Hide the character count
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color:Colors.blue),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.black87, // Customize the text color
                    ),
                    onChanged: (value) {
                      updateText(value);
                    },
                  ),
                ),
                Expanded(child: Container()),
                ConstrainedBox(
                  constraints: const BoxConstraints.expand(height: 200,width: 200),
                  child: const Text(''),
                ),
                Center(
                  child: OutlinedButton(
                    onPressed: () {
                      _openDateTimePicker(context);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor:  istext ? Colors.blue : Colors.black12,
                      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 12),
                      minimumSize: const Size(150, 25),
                      maximumSize: const Size(250, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white), // Text color
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
  void _openDateTimePicker(BuildContext context) {
    istext ?
    BottomPicker.dateTime(
      titlePadding: EdgeInsets.only(top: 10),
      title: 'Select Time and Date',
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        color: Colors.blue,
      ),
      onSubmit: (date) {
        print(date);
      },
      onClose: () {
        print('Picker closed');
      },
      iconColor: Colors.black,
      minDateTime: DateTime(2023, 8, 1),
      maxDateTime: DateTime(2023, 12, 2),
      initialDateTime: DateTime(2023, 8, 1),
      gradientColors: const [Color(0xfffdcbf1), Color(0xffe6dee9)],
    ).show(context)
    : Container();
  }
}

