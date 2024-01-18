import 'package:flutter/material.dart';
//import 'package:modernlogintute/admin/third.dart';


class fourth extends StatelessWidget {
   fourth({super.key});

  
  final List<Map<String, String>> rowData = [
    {'Reg Number': 'EG_2020_1234', 'Name': 'Amal', 'Status': 'present'},
    {'Reg Number': 'EG_2020_5678','Name': 'Nimal', 'Status': 'absent'},
    {'Reg Number': 'EG_2020_1234', 'Name': 'Kamal', 'Status': 'absent'},
    {'Reg Number': 'EG_2020_2345', 'Name': 'Nadeesha', 'Status': 'absent'},
    {'Reg Number':'EG_2020_4561', 'Name': 'Samadi', 'Status': 'present'},
    {'Reg Number': 'EG_2020_1234', 'Name': 'Amal', 'Status': 'present'},
    {'Reg Number': 'EG_2020_5678','Name': 'Nimal', 'Status': 'absent'},
    {'Reg Number': 'EG_2020_1234', 'Name': 'Kamal', 'Status': 'absent'},
    {'Reg Number': 'EG_2020_2345', 'Name': 'Nadeesha', 'Status': 'absent'},
    {'Reg Number':'EG_2020_4561', 'Name': 'Samadi', 'Status': 'present'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(
          "Attendance app",
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: const FixedColumnWidth(120.0),
                border: TableBorder.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                children: [
                  // Table header
                  const TableRow(
                    children: [
                      Column(
                        children: [Text('Reg Number', style: TextStyle(fontSize: 20.0))],
                      ),
                      Column(
                        children: [Text('Name', style: TextStyle(fontSize: 20.0))],
                      ),
                      Column(
                        children: [Text('Status', style: TextStyle(fontSize: 20.0))],
                      ),
                    ],
                  ),
                  // Generate rows dynamically
                  for (var data in rowData)
                    TableRow(
                      children: [
                        Column(children: [Text(data['Reg Number']!)]),
                        Column(children: [Text(data['Name']!)]),
                        Column(children: [Text(data['Status']!)]),
                      ],
                    ),
                ],
              ),
            ),

            // Container(
            //     margin: EdgeInsets.only(top: 20),
            //     decoration: BoxDecoration(
            //       color: Color.fromARGB(255, 255, 68, 0),
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     width: 200,
            //     child: TextButton(
            //       onPressed: () {
            //         Navigator.push(
            //           context,
            //           MaterialPageRoute(builder: (context) =>  fourthpage()),
            //         );
            //       },
            //       child: const Text(
            //         "Next",
            //         style: TextStyle(color: Colors.white, fontSize: 20),
            //       ),
                // ),
              // ),









          ],
        ),
      ),
    );
  }
}




























// class thirdpage extends StatelessWidget {
//   const thirdpage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//        backgroundColor: Colors.grey[300],

//        appBar: AppBar(
//           title: const Text(
//             "Attendence app",
//           ),
//           backgroundColor: Colors.orange,
//         ),



//         body: Center( 
           
//               child: Column(children: <Widget>[  
                
//                 Container(  
                  
//                   margin:const EdgeInsets.all(20),  
//                   child: Table(  
//                     defaultColumnWidth: const FixedColumnWidth(120.0),  
//                     border: TableBorder.all(  
//                         color: Colors.black,  
//                         style: BorderStyle.solid,  
//                         width: 2),  
//                     children: const [  
//                       TableRow( children: [  
//                         Column(children:[Text('Website', style: TextStyle(fontSize: 20.0))]),  
//                         Column(children:[Text('Name', style: TextStyle(fontSize: 20.0))]),  
//                         Column(children:[Text('Status', style: TextStyle(fontSize: 20.0))]),  
//                       ]),  
//                       TableRow( children: [  
//                         Column(children:[Text('Javatpoint')]),  
//                         Column(children:[Text('Flutter')]),  
//                         Column(children:[Text('5*')]),  
//                       ]),  
//                       TableRow( children: [  
//                         Column(children:[Text('Javatpoint')]),  
//                         Column(children:[Text('MySQL')]),  
//                         Column(children:[Text('5*')]),  
//                       ]),  
//                       TableRow( children: [  
//                         Column(children:[Text('Javatpoint')]),  
//                         Column(children:[Text('ReactJS')]),  
//                         Column(children:[Text('5*')]),  
//                       ]),  
//                     ],  
//                   ),  
//                 ), 
//               ] 
//               )  
//         )
//     );
//   }
// }




































      // body: Padding(
      //   padding: const EdgeInsets.all(15.0),
      //   child: Table(
      //     border: TableBorder.all(color: Colors.white),
      //     defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      //     children: [
      //       const TableRow(
      //         decoration: BoxDecoration(color: Colors.redAccent),
      //         children: [
      //           TableCell(
      //             verticalAlignment: TableCellVerticalAlignment.middle,
      //             child: Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: Text('REG No',
      //               style: TextStyle(
      //                 fontSize: 20,
                      
      //               ),),
      //             ),
      //           ),
      
      //            TableCell(
      //             verticalAlignment: TableCellVerticalAlignment.middle,
      //             child: Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: Text('Name',
      //               style: TextStyle(
      //                 fontSize: 20,
                      
      //               ),),
      //             ),
      //           ),
      
      //            TableCell(
      //             verticalAlignment: TableCellVerticalAlignment.middle,
      //             child: Padding(
      //               padding: EdgeInsets.all(8.0),
      //               child: const Text('Status',
      //               style: TextStyle(
      //                 fontSize: 20,
                      
      //               ),),
      //             ),
      //           ),

            
                
               


      //         ],
      //       ),




      //     ],
      //   ),
      // ),
//     );
//   }
// }
