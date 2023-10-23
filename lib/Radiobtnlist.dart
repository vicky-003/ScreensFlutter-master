import 'package:flutter/material.dart';

class Weather {
  final int id;
  final String weatherName;

  Weather({required this.id, required this.weatherName});
}

class RadioWidget extends StatefulWidget {
  RadioWidget() : super();

  @override
  RadioWidgetDemoState createState() => RadioWidgetDemoState();
}

class RadioWidgetDemoState extends State<RadioWidget> {
  late List<Weather> weathers;
  late Weather selectedWeather;

  List<Weatherlist> items = [
    Weatherlist(
      Id: 1,
      weathername: 'Summer',
      fruits: ['Apple', 'Banana'],
      vegetables: ['Potato', 'LadyFinger'],
      vehicles: ['Cars', 'Bikes'],
    ),
    Weatherlist(
      Id: 2,
      weathername: 'Winter',
      fruits: ['Cherry', 'Grapes'],
      vegetables: ['Carrots', 'Swiss Chard'],
      vehicles: ['Motor Sled', 'Snow Scooter'],
    ),
    Weatherlist(
      Id: 3,
      weathername: 'Rain',
      fruits: ['Orange', 'Strawberry'],
      vegetables: ['Bitter Gourd', 'Bottle Gourd'],
      vehicles: ['SUV Cars', 'Bus'],
    ),
  ];

  @override
  void initState() {
    super.initState();
    weathers = items.map((weatherlist) => Weather(id: weatherlist.Id, weatherName: weatherlist.weathername)).toList();
    selectedWeather = weathers.isNotEmpty ? weathers[0] : Weather(id: 0, weatherName: '');
  }

  List<Widget> createRadioList() {
    List<Widget> widgets = [];
    for (Weather weatherItem in weathers) {
      widgets.add(
        RadioListTile<Weather>(
          value: weatherItem,
          groupValue: selectedWeather,
          title: Text(weatherItem.weatherName),
          onChanged: (Weather? currentWeather) {
            if (currentWeather != null) {
              print("Selected Weather: ${currentWeather.weatherName}");
              setState(() {
                selectedWeather = currentWeather;
              });
            }
          },
          selected: selectedWeather == weatherItem,
          // activeColor: Colors.green,
        ),
      );
    }
    return widgets;
  }

  List<Widget> createFruitList(List<String> fruitNames) {
    List<Widget> widgets = [];
    for (String fruitName in fruitNames) {
      widgets.add(
        ListTile(
          title: Text(fruitName),
          onTap: () {
            // Handle the fruit name selection here
            print("Selected Fruit: $fruitName");
          },
        ),
      );
    }
    return widgets;
  }

  List<Widget> createVeggieList(List<String> vegetableNames) {
    List<Widget> widgets = [];
    for (String vegetableName in vegetableNames) {
      widgets.add(
        ListTile(
          title: Text(vegetableName),
          onTap: () {
            // Handle the vegetable name selection here
            print("Selected Vegetable: $vegetableName");
          },
        ),
      );
    }
    return widgets;
  }

  List<Widget> createVehiclesList(List<String> vehicleNames) {
    List<Widget> widgets = [];
    for (String vehicleName in vehicleNames) {
      widgets.add(
        ListTile(
          title: Text(vehicleName),
          onTap: () {
            // Handle the vehicle name selection here
            print("Selected Vehicle: $vehicleName");
          },
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back, color: Colors.white,)),
        title: const Center(child: Text('Radio Demo', style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
            ),
            Column(
              children: createRadioList(),
            ),
            if (selectedWeather != null)
              Column(
                children: [
                  Text("Selected Weather: ${selectedWeather.weatherName}"),
                  Text("Fruits:"),
                  ...createFruitList(items[selectedWeather.id - 1].fruits),
                  Text("Vegetables:"),
                  ...createVeggieList(items[selectedWeather.id - 1].vegetables),
                  Text("Vehicles:"),
                  ...createVehiclesList(items[selectedWeather.id - 1].vehicles),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class Weatherlist {
  int Id;
  late String weathername;
  late List<String> fruits;
  late List<String> vegetables;
  late List<String> vehicles;

  Weatherlist({required this.Id, required this.weathername, required this.fruits, required this.vegetables, required this.vehicles});
}

