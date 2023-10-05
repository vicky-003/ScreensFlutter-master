import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';  // Import the GetWidget library

class dropdlist extends StatefulWidget {
  const dropdlist({Key? key}) : super(key: key);

  @override
  _DropDownWithCheckboxesState createState() => _DropDownWithCheckboxesState();
}

class _DropDownWithCheckboxesState extends State<dropdlist> {
  /*List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  String selectedItem = 'Item 1';*/
  List<String> dropList = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("DropDown with Checkboxes"),
        ),
        body: Container(
          child: GFMultiSelect(
            items: dropList,
            onSelect: (value) {
              print('selected $value ');
            },
            dropdownTitleTileText: 'Item 1, Item 2, Item 3, Item 4, Item 5',
            dropdownTitleTileColor: Colors.grey[200],
            dropdownTitleTileMargin: EdgeInsets.only(
                top: 22, left: 18, right: 18, bottom: 5),
            dropdownTitleTilePadding: EdgeInsets.all(10),
            dropdownUnderlineBorder: const BorderSide(
                color: Colors.transparent, width: 2),
            dropdownTitleTileBorder:
            Border.all(color: Colors.grey, width: 1),
            dropdownTitleTileBorderRadius: BorderRadius.circular(5),
            expandedIcon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.black54,
            ),
            collapsedIcon: const Icon(
              Icons.keyboard_arrow_up,
              color: Colors.black54,
            ),
            submitButton: Text('OK'),
            dropdownTitleTileTextStyle: const TextStyle(
                fontSize: 14, color: Colors.black54),
            padding: const EdgeInsets.all(6),
            margin: const EdgeInsets.all(6),
            type: GFCheckboxType.basic,
            activeBgColor: Colors.purple.withOpacity(0.5),
            inactiveBorderColor: Colors.grey,
          ),
        ),
      ),
    );
  }
}

/*DropdownButton<String>(
value: selectedItem,
icon: const Icon(Icons.keyboard_arrow_down),
items: items.map((item) {
bool isChecked = selectedItem == item;
return DropdownMenuItem<String>(
value: item,
child: Padding(
padding: const EdgeInsets.all(8.0), // Add padding here
child: Row(
children: [
Checkbox(
value: isChecked,
onChanged: (bool? newValue) {
setState(() {
selectedItem = item;
});
},
),
SizedBox(width: 10), // Add some space between Checkbox and Text
Text(item),
],
),
),
);
}).toList(),
onChanged: (String? newValue) {
setState(() {
selectedItem = newValue!;
});
},
),*/
/*CheckboxListTile(
controlAffinity: ListTileControlAffinity.leading,
title: Text(item),
value: isChecked,
onChanged: (value) {
setState(() {
isChecked = !isChecked;
});
},
),*/

