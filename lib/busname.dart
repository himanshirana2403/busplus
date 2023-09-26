/*import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    // Application name
    title: 'BusPlus',
    debugShowCheckedModeBanner: false, // Remove debug banner
    home: const MyApp(),
  ));
}
class BusListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus List App',
      debugShowCheckedModeBanner: false, // Set debugShowCheckedModeBanner to false
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/busList': (context) => BusListScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/busList');
          },
          child: Text('View Bus List'),
        ),
      ),
    );
  }
}

class BusListScreen extends StatefulWidget {
  @override
  _BusListScreenState createState() => _BusListScreenState();
}
class _BusListScreenState extends State<BusListScreen> {
  List<BusInfo> busList = [
    BusInfo('Bus A', '9:00 AM', '5:00 PM'),
    BusInfo('Bus B', '9:30 AM', '5:30 PM'),
    BusInfo('Bus C', '10:00 AM', '6:00 PM'),
  ];

  BusInfo? selectedBus;

  // Define a map of bus names to their corresponding locations (latitude and longitude).
  Map<String, String> busLocations = {
    'Bus A': '31.1048, 77.2674', // Shimla
    'Bus B': '32.2396, 77.1887', // Manali
    'Bus C': '29.9765, 77.3132', // Kasauli
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus List'),
      ),
      body: ListView.builder(
        itemCount: busList.length,
        itemBuilder: (context, index) {
          final bus = busList[index];
          return ListTile(
            title: Text(bus.name),
            subtitle: Text('Arrival: ${bus.arrivalTime}, Departure: ${bus.departureTime}'),
            onTap: () {
              setState(() {
                selectedBus = bus;
              });

              // When a bus is tapped, open Google Maps with the corresponding location.
              if (busLocations.containsKey(bus.name)) {
                _launchGoogleMaps(busLocations[bus.name]!);
              }
            },
            selected: selectedBus == bus,
          );
        },
      ),
    );
  }

  // Function to open Google Maps with a specific location (latitude and longitude).
  void _launchGoogleMaps(String location) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$location';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps';
    }
  }
}

/*
class _BusListScreenState extends State<BusListScreen> {
  List<BusInfo> busList = [
    BusInfo('Bus 1', '9:00 AM', '5:00 PM'),
    BusInfo('Bus 2', '9:30 AM', '5:30 PM'),
    BusInfo('Bus 3', '10:00 AM', '6:00 PM'),
    // Add more bus information here
  ];

  BusInfo? selectedBus;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus List'),
      ),
      body: ListView.builder(
        itemCount: busList.length,
        itemBuilder: (context, index) {
          final bus = busList[index];
          return ListTile(
            title: Text(bus.name),
            subtitle: Text('Arrival: ${bus.arrivalTime}, Departure: ${bus.departureTime}'),
            onTap: () {
              setState(() {
                selectedBus = bus;
              });
            },
            selected: selectedBus == bus,
          );
        },
      ),
    );
  }
}*/

class BusInfo {
  final String name;
  final String arrivalTime;
  final String departureTime;

  BusInfo(this.name, this.arrivalTime, this.departureTime);
}
*/
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:webview_flutter/webview_flutter.dart';
void main() {
  runApp(BusListApp());
}

class BusListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bus List App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/busList': (context) => BusListScreen(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/busList');
          },
          child: Text('View Bus List'),
        ),
      ),
    );
  }
}

class BusListScreen extends StatefulWidget {
  @override
  _BusListScreenState createState() => _BusListScreenState();
}

class _BusListScreenState extends State<BusListScreen> {
  List<BusInfo> busList = [
    BusInfo('Bus A', '9:00 AM', '5:00 PM'),
    BusInfo('Bus B', '9:30 AM', '5:30 PM'),
    BusInfo('Bus C', '10:00 AM', '6:00 PM'),
  ];

  BusInfo? selectedBus;

  Map<String, String> busLocations = {
    'Bus A': '31.1048, 77.2674', // Shimla
    'Bus B': '32.2396, 77.1887', // Manali
    'Bus C': '29.9765, 77.3132', // Kasauli
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus List'),
      ),
      body: ListView.builder(
        itemCount: busList.length,
        itemBuilder: (context, index) {
          final bus = busList[index];
          return ListTile(
            title: Text(bus.name),
            subtitle: Text('Arrival: ${bus.arrivalTime}, Departure: ${bus.departureTime}'),
            onTap: () {
              setState(() {
                selectedBus = bus;
              });

              if (busLocations.containsKey(bus.name)) {
                _launchGoogleMaps(busLocations[bus.name]!);
              }
            },
            selected: selectedBus == bus,
          );
        },
      ),
    );
  }

  void _launchGoogleMaps(String location) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$location';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch Google Maps';
    }
  }
}

class BusInfo {
  final String name;
  final String arrivalTime;
  final String departureTime;

  BusInfo(this.name, this.arrivalTime, this.departureTime);
}
