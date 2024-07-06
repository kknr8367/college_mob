import 'package:flutter/material.dart';
import '../teacher_modules/attendance.dart';
import '../teacher_modules/time_table.dart';
import '../teacher_modules/exams.dart';
import '../teacher_modules/assignments.dart';
import '../teacher_modules/notifications.dart';
import '../teacher_modules/reports.dart';
import '../teacher_modules/add_student_marks.dart';
import '../teacher_modules/add_student_attendance.dart';
import '../teacher_modules/view_student_details.dart';

class TeacherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teacher Modules'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: <Widget>[
          _buildGridItem(context, 'Attendance', Icons.check_circle,
              TeacherAttendanceScreen()),
          _buildGridItem(
              context, 'Time-Table', Icons.schedule, TeacherTimeTableScreen()),
          _buildGridItem(context, 'Exams', Icons.event, TeacherExamsScreen()),
          _buildGridItem(context, 'Assignments', Icons.assignment,
              TeacherAssignmentsScreen()),
          _buildGridItem(context, 'Notifications', Icons.notifications,
              TeacherNotificationsScreen()),
          _buildGridItem(
              context, 'Reports', Icons.report, TeacherReportsScreen()),
          _buildGridItem(
              context, 'Add Marks', Icons.edit, AddStudentMarksScreen()),
          _buildGridItem(context, 'Add Attendance', Icons.check,
              AddStudentAttendanceScreen()),
          _buildGridItem(context, 'Student Details', Icons.info,
              ViewStudentDetailsScreen()),
        ],
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String title, IconData icon, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Card(
        margin: EdgeInsets.all(4.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(icon, size: 40),
              SizedBox(height: 5),
              Text(title,
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import '../teacher_modules/attendance.dart';
// import '../teacher_modules/time_table.dart';
// import '../teacher_modules/exams.dart';
// import '../teacher_modules/assignments.dart';
// import '../teacher_modules/notifications.dart';
// import '../teacher_modules/reports.dart';

// class TeacherScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Teacher Modules'),
//       ),
//       body: GridView.count(
//         crossAxisCount: 3,
//         childAspectRatio: 1,
//         children: <Widget>[
//           _buildGridItem(context, 'Attendance', Icons.check_circle,
//               TeacherAttendanceScreen()),
//           _buildGridItem(
//               context, 'Time-Table', Icons.schedule, TeacherTimeTableScreen()),
//           _buildGridItem(context, 'Exams', Icons.event, TeacherExamsScreen()),
//           _buildGridItem(context, 'Assignments', Icons.assignment,
//               TeacherAssignmentsScreen()),
//           _buildGridItem(context, 'Notifications', Icons.notifications,
//               TeacherNotificationsScreen()),
//           _buildGridItem(
//               context, 'Reports', Icons.report, TeacherReportsScreen()),
//         ],
//       ),
//     );
//   }

//   Widget _buildGridItem(
//       BuildContext context, String title, IconData icon, Widget destination) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => destination),
//         );
//       },
//       child: Card(
//         margin: EdgeInsets.all(4.0),
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Icon(icon, size: 40),
//               SizedBox(height: 5),
//               Text(title,
//                   textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// // import 'package:flutter/material.dart';

// // class TeacherScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Teacher Screen'),
// //       ),
// //       body: Center(
// //         child: Text('Teacher Screen'),
// //       ),
// //     );
// //   }
// // }
