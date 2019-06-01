import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              'This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. This is a test. ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Built by:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              'Fraser Croad, Linus WK Chan, John Graves and Nic Tolentino',
            ),
          ],
        ),
      ),
    );
  }
}
