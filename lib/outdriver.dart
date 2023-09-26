/*import 'package:flutter/material.dart';

class OutputPage extends StatefulWidget {
  final String name;
  final String idCardNumber;
  final String mobileNumber;
  final String busNumber;
  final String selectedFuel;

  OutputPage({
    required this.name,
    required this.idCardNumber,
    required this.mobileNumber,
    required this.busNumber,
    required this.selectedFuel,
  });

  @override
  _OutputPageState createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Entered'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: ${widget.name}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'ID Card Number: ${widget.idCardNumber}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Mobile Number: ${widget.mobileNumber}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Bus Number: ${widget.busNumber}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Bus Emission Compliance (Fuel): ${widget.selectedFuel}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
*/
import 'package:flutter/material.dart';

class OutputPage extends StatefulWidget {
  final String name;
  final String idCardNumber;
  final String mobileNumber;
  final String busNumber;
  final String selectedFuel;

  OutputPage({
    required this.name,
    required this.idCardNumber,
    required this.mobileNumber,
    required this.busNumber,
    required this.selectedFuel,
  });

  @override
  _OutputPageState createState() => _OutputPageState();
}

class _OutputPageState extends State<OutputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Entered'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Name: ${widget.name}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0), // Increase font size
            ),
            Text(
              'ID Card Number: ${widget.idCardNumber}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0), // Increase font size
            ),
            Text(
              'Mobile Number: ${widget.mobileNumber}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0), // Increase font size
            ),
            Text(
              'Bus Number: ${widget.busNumber}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0), // Increase font size
            ),
            Text(
              'Bus Emission Compliance (Fuel): ${widget.selectedFuel}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0), // Increase font size
            ),
            Spacer(), // Add spacer to push the SOS button to the bottom
            Column(
              children: [
                Text(
                  'In case of emergency, press SOS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                SizedBox(height: 16.0), // Add spacing above the SOS button
                InkWell(
                  onTap: () {
                    // Handle SOS button action here
                    // You can implement your SOS logic here
                  },
                  child: Container(
                    width: 120.0, // Set the width of the circular button
                    height: 120.0, // Set the height of the circular button
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Make it circular
                      color: Colors.white, // Set background color to red
                    ),

                    child: Center(
                      child: Image.asset(
                        'assets/images/img_1.png', // Replace with the path to your SOS button image
                        width: 60.0, // Set the width of the image
                        height: 60.0, // Set the height of the image
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}