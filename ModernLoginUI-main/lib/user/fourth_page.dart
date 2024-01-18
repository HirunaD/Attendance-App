import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController departmentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Add Lecture"),
        backgroundColor: const Color.fromRGBO(255, 152, 0, 1),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: idController,
                decoration: const InputDecoration(
                  labelText: "ID",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: departmentController,
                decoration: const InputDecoration(
                  labelText: "Department",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Inside the onPressed of the "Save" button
                  void saveDataToFirestore() {
                  String name = nameController.text;
                  String id = idController.text;
                  String department = departmentController.text;

                  // Reference to the Firestore collection
                  CollectionReference students = FirebaseFirestore.instance.collection('students');

                  // Add the data to Firestore
                  students.add({
                    'name': name,
                    'id': id,
                    'department': department,
                  });

                  // Optionally, show a success message or navigate to another page
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Data saved to Firestore: $name, $id, $department'),
                    ),
                  );
                }
                  // // Perform save action here
                  // String name = nameController.text;
                  // String id = idController.text;
                  // String department = departmentController.text;

                  // // You can do something with the data, e.g., save to database

                  // // Optionally, you can show a snackbar or navigate to another page
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text('Lecture saved: $name, $id, $department'),
                  //   ),
                  // );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}































