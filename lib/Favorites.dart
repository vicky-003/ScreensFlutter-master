import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  State<Favorites> createState() => Favoriteslist();
}



/* List<bool> checkboxValues = [false, false, false]; // List of checkbox states
  bool selectAll = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Favorites',
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 21, color: Colors.deepPurple),
                      ),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Item 3'),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close),
                    ),
                    // Image(image: AssetImage('assets/heart.png'),height: 12,)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 21, color: Colors.blue),
                      ),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Item 5'),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close),
                    ),
                    // Image(image: AssetImage('assets/heart.png'),height: 12,)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 21, color: Colors.indigo),
                      ),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Item 22'),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close),
                    ),
                    // Image(image: AssetImage('assets/heart.png'),height: 12,)
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 21, color: Colors.purple),
                      ),
                      margin: EdgeInsets.only(
                        right: 14,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Item 92'),
                    ),
                    Expanded(child: Container()),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.close),
                    ),
                    // Image(image: AssetImage('assets/heart.png'),height: 12,)
                  ],
                ),
              ],
            ),
          ),
      ElevatedButton(
      onPressed: () {
        setState(() {
        selectAll = !selectAll;
        checkboxValues = List.filled(checkboxValues.length, selectAll);
        // Perform any other desired actions
        });
        },
          child: Text(selectAll ? 'Deselect All' : 'Select All'),
        ),
      Expanded(
        child: ListView.builder(
          itemCount: checkboxValues.length,
          itemBuilder: (BuildContext context, int index) {
            return CheckboxListTile(
              value: checkboxValues[index],
              onChanged: (value) {
                setState(() {
                  checkboxValues[index] = value!;
                  // Perform any other desired actions
                });
              },
              title: Text('Checkbox ${index + 1}'),
            );
          },
        ),
      )
        ],
      ),
    ));
  }*/

class Favoriteslist extends State<Favorites> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'vj',
      theme: ThemeData(
        // enable Material 3
        useMaterial3: true,
        primarySwatch: Colors.indigo,
      ),
      home: const HomePage(),
    );
  }
}

// Multi Select widget
// This widget is reusable
class MultiSelect extends StatefulWidget {
  final List<String> items;
  const MultiSelect({Key? key, required this.items}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelectState();
}

class _MultiSelectState extends State<MultiSelect> {
  // this variable holds the selected items
  final List<String> _selectedItems = [];

// This function is triggered when a checkbox is checked or unchecked
  void _itemChange(String itemValue, bool isSelected) {
    setState(() {
      if (isSelected) {
        _selectedItems.add(itemValue);
      } else {
        _selectedItems.remove(itemValue);
      }
    });
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Select Topics'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items
              .map((item) => CheckboxListTile(
            value: _selectedItems.contains(item),
            title: Text(item),
            controlAffinity: ListTileControlAffinity.leading,
            onChanged: (isChecked) => _itemChange(item, isChecked!),
          ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

// Implement a multi select on the Home screen
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _selectedItems = [];

  void _showMultiSelect() async {
    // a list of selectable items
    // these items can be hard-coded or dynamically fetched from a database/API
    final List<String> items = [
      'Flutter',
      'Node.js',
      'React Native',
      'Java',
      'Docker',
      'MySQL'
    ];

    final List<String>? results = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelect(items: items);
      },
    );

    // Update UI
    if (results != null) {
      setState(() {
        _selectedItems = results;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkbox Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // use this button to open the multi-select dialog
            ElevatedButton(
              onPressed: _showMultiSelect,
              child: const Text('Select Your Favorite Topics'),
            ),
            const Divider(
              height: 30,
            ),
            // display selected items
            Wrap(
              children: _selectedItems
                  .map((e) => Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Chip(
                label: Text(e),
              ),
                  ))
                  .toList(),
            )
          ],
        ),
      ),
    );
  }
}






 /* bool _checkbox = false;
  bool _checkboxListTile = false;

  List<bool> _checkboxListTileValues = [false, false, false, false, false];
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Checkbox'),
      ),
*//*
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(
                  value: _checkbox,
                  onChanged: (value) {
                    setState(() {
                      _checkbox = !_checkbox;
                    });
                  },
                ),
                Text('I am Parent'),
              ],
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text('I am Child'),
              value: _checkboxListTile,
              onChanged: (value) {
                setState(() {
                  _checkboxListTile = !_checkboxListTile;
                });
              },
            )
          ],
        ),
      ),
*//*
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(items[index]),
            value: _checkboxListTileValues[index],
            onChanged: (value) {
              setState(() {
                _checkboxListTileValues[index] = value!;
              });
            },
          );
        },
      ),
    );
  }
}
*/

