import 'package:flutter/material.dart';
import '../components/custom_app_bar.dart';
import 'second_page.dart';
import 'third_page.dart'; // Import the ThirdPage class
// import 'fourth_page.dart';
// import 'fifth_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: const CustomAppBar(
        title: "Attendane App",
        body: Center(
          child: Text('This is the First Page'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigate to the SecondPage
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  //foregroundColor: Colors.white,
                  minimumSize: const Size(200, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text('Lectures',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 50), // Adding some space between buttons
            ElevatedButton(
              onPressed: () {
                // Navigate to the ThirdPage
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ThirdPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  //foregroundColor: Colors.white,
                  minimumSize: const Size(200, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text('Students',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
