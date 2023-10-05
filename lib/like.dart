import 'package:flutter/material.dart';

class like extends StatefulWidget {
  const like({super.key});

  @override
  Likescreen createState() => Likescreen();
}

class Likescreen extends State<like> {
  List<bool> isPressed = [];
  List<String> isPart = [];
  List<bool> isSelected = [];

  List<itemlist> items = [
    itemlist(itemtest: 'item75', color: Colors.brown),
    itemlist(itemtest: 'item76', color: Colors.green),
    itemlist(itemtest: 'item77', color: Colors.blue),
    itemlist(itemtest: 'item78', color: Colors.amber),
  ];

  bool selectAll = false;
  bool newRowAdded = false;

  @override
  void initState() {
    super.initState();
    // Initialize the list of like states to false for each item
    isPressed = List.generate(items.length, (index) => false);
  }

  void _toggleLike(int index) {
    setState(() {
      items[index].isMark = !items[index].isMark;
      if (items[index].isMark) {
        isPart.add(items[index].itemtest);
      } else {
        isPart.remove(items[index].itemtest);
      }
      if (isPart.length == items.length) {
        selectAll = true;
      } else {
        selectAll = false;
      }
      print(isPart);
    });
  }

  void _toggleSelectAll() {
    setState(() {
      selectAll = !selectAll;
      isPart.clear();
      for (var item in items) {
        item.isMark = selectAll;
        if (selectAll) {
          isPart.add(item.itemtest);
        }
      }
    });
    print(isPart);
  }

  void _addnewRow() {
    setState(() {
      int newitemNumber = items.length - 1;
      String newitemText = 'item$newitemNumber';
      Color newitemColor = Colors.purple;
      items.add(itemlist(itemtest: newitemText, color: newitemColor));
      if (!newRowAdded) {
        newRowAdded = true;
      }
    });
    newRowAdded = false;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Test', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.white,
                )),
            Padding(
              padding: const EdgeInsets.only(right: 9.0),
              child: Text(
                'Favorites',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            IconButton(
              onPressed: _toggleSelectAll,
              icon: Icon(
                Icons.check_box_outlined,
                color: selectAll ? Colors.black : Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 350,
              padding: EdgeInsets.all(16),
              child:  ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(


                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 21,
                                      color: items[index].color),
                                ),
                                margin: EdgeInsets.only(
                                  right: 14,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 14, left: 8),
                                child: Text("${items[index].itemtest}"),
                              ),
                              Expanded(child: Container()),
                              IconButton(
                                  onPressed: () => _toggleLike(index),
                                  icon: Icon(
                                    Icons.favorite,
                                    color: items[index].isMark
                                        ? Colors.red
                                        : null,
                                  )),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    items.removeAt(index);
                                  });
                                },
                                icon: Icon(Icons.delete),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            Container(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      minimumSize: Size(300, 50),
                      maximumSize: Size(300, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: _addnewRow,
                    child: Text(
                      'Add items',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ))),
          ],
        ),
      ),
    );
  }
}

class itemlist {
  String itemtest;
  bool isMark = false;
  Color color;

  itemlist({required this.itemtest, required this.color});
}


