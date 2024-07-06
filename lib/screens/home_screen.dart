import 'package:flutter/material.dart';
import 'admin_screen.dart';
import 'student_screen.dart';
import 'teacher_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminScreen()),
                );
              },
              child: Text('Admin Modules'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentScreen()),
                );
              },
              child: Text('Student Modules'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherScreen()),
                );
              },
              child: Text('Teacher Modules'),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'admin_screen.dart';
// import 'teacher_screen.dart';
// import 'student_screen.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Screen'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton.icon(
//               icon: Icon(Icons.admin_panel_settings, size: 24),
//               label: Text('Admin'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => AdminScreen()),
//                 );
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: Icon(Icons.school, size: 24),
//               label: Text('Teacher'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => TeacherScreen()),
//                 );
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: Icon(Icons.person, size: 24),
//               label: Text('Student'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => StudentScreen()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// // import 'package:flutter/material.dart';
// // import 'admin_screen.dart';
// // import 'teacher_screen.dart';
// // import 'student_screen.dart';
// // import 'attendance_screen.dart';

// // class HomeScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Home Screen'),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             ElevatedButton.icon(
// //               icon: Icon(Icons.admin_panel_settings, size: 30),
// //               label: Text('Admin'),
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => AdminScreen()),
// //                 );
// //               },
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton.icon(
// //               icon: Icon(Icons.school, size: 30),
// //               label: Text('Teacher'),
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => TeacherScreen()),
// //                 );
// //               },
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton.icon(
// //               icon: Icon(Icons.person, size: 30),
// //               label: Text('Student'),
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => StudentScreen()),
// //                 );
// //               },
// //             ),
// //             SizedBox(height: 20),
// //             ElevatedButton.icon(
// //               icon: Icon(Icons.check_circle, size: 30),
// //               label: Text('Attendance'),
// //               onPressed: () {
// //                 Navigator.push(
// //                   context,
// //                   MaterialPageRoute(builder: (context) => AttendanceScreen()),
// //                 );
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
