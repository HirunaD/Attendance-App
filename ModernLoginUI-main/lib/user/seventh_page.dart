import 'package:flutter/material.dart';

class SeventhPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Batch Selection"),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to Batch 21 page
                Navigator.pushNamed(context, '/batch21');
              },
              child: const Text('21 Batch'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Batch 22 page
                Navigator.pushNamed(context, '/batch22');
              },
              child: Text('22 Batch'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Batch 23 page
                Navigator.pushNamed(context, '/batch23');
              },
              child: Text('23 Batch'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to Batch 24 page
                Navigator.pushNamed(context, '/batch24');
              },
              child: const Text('24 Batch'),
            ),
          ],
        ),
      ),
    );
  }
}




