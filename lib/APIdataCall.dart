import 'package:flutter/material.dart';
import 'models/user.dart';

class APIdata extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<APIdata> {
  int selectedRadio = 0;
  List<Seasons> Seasonfield = [];

  void updateSeason() {
    setState(() {
      Seasonfield = seasonsList!.seasons
          .where((season) => season.type.id == selectedRadio)
          .toList();
    });
  }

  AutoGenerate ? seasonsList = AutoGenerate (seasons: [
    Seasons(type: Type(name: "Monsoon", id: 1, value: ["Orange", "Strawberry", "plum"])),
    Seasons(type: Type(name: "Summer", id: 1, value: ["Apple", "Banana", "Watermelon"])),
    Seasons(type: Type(name: "Winter", id: 1, value: ["Cherry", "Grapes", "Kiwi"])),
    Seasons(type: Type(name: "Monsoon", id: 2, value: ["Round Melon", "Bottle Gourd", "Bitter Gourd"])),
    Seasons(type: Type(name: "Summer", id: 2, value: ["Tomatos", "Brinjal", "Cucumber"])),
    Seasons(type: Type(name: "Winter", id: 2, value: ["Broccoli", "Vabbages", "Potato"])),
    Seasons(type: Type(name: "Monsoon", id: 3, value: ["Bus", "Jeep", "Car"])),
    Seasons(type: Type(name: "Summer", id: 3, value: ["bus", "bikes", "car"])),
    Seasons(type: Type(name: "Winter", id: 3, value: ['Motor Sled', 'Snow Scooter' "Snow Bikes"])),
  ]);

  @override
  void initState() {
    super.initState();
    updateSeason();
    print("Length${seasonsList!.seasons.length}");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Season Selection'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  ListTile(
                    title: const Text('Fruit'),
                    leading: Radio(
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value!;
                          updateSeason();
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('vagetables'),
                    leading: Radio(
                      value: 2,
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value!;
                          updateSeason();
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('vehicle'),
                    leading: Radio(
                      value: 3,
                      groupValue: selectedRadio,
                      onChanged: (value) {
                        setState(() {
                          selectedRadio = value!;
                          updateSeason();
                        });
                      },
                    ),
                  ),
                ],
              ),
              Container(
                  child: ListView.builder(
                   physics: const NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                    itemCount: Seasonfield.length,
                    itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 30, left: 33),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: Text(
                            Seasonfield[index].type.name,
                            style:
                                const TextStyle(fontSize: 17, color: Colors.blue),
                          ),
                        ),
                        const Divider(
                          endIndent: 300,
                          color: Colors.black,
                          thickness: 1,
                        ),
                        Container(
                          child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount:
                                Seasonfield[index].type.value.length,
                            itemBuilder: (context, index1) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, left: 10, bottom: 3),
                                    child: Text(
                                        Seasonfield[index].type.value[index1],
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color: Colors.black)),
                                  ),
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  );
                },
              ))
            ],
          ),
        ),
      ),
    );
  }
}

