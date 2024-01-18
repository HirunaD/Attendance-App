import 'package:flutter/material.dart';
//import 'package:modernlogintute/admin/fourth.dart';

class third extends StatelessWidget {
  const third({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text(
            "Attendence app",
          ),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 200),
                child: Center(
                  child: Text(
                    "Take Attendence",
                    style: TextStyle(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),
    
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 200,
                height: 100,
              ),
              // Container(
              //   margin: EdgeInsets.only(top: 50),
              //   child: Center(
              //     child: Text(
              //       "Take Attendence",
              //       style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
              //     ),
              //   ),
              //   decoration: BoxDecoration(
              //     color: Colors.orange,
              //     borderRadius: BorderRadius.circular(10),
              //   ),
              //   width: 200,
              //   height: 100,
                
              // ),
    
              Container(
                  margin: const EdgeInsets.only(top: 50),
                  decoration: BoxDecoration(
                     color: Colors.orange,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  width: 200,
                  height: 100,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  fourth()),
                      );
                    }, child:   const Text(
                      "View students",
                      style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
                    )
                  ),
              )
    
    
    
            ],
          ),
        ),
      );
    
  }
}
