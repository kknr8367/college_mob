import 'package:flutter/material.dart';
import '../student_modules/attendance.dart';
import '../student_modules/time_table.dart';
import '../student_modules/exams.dart';
import '../student_modules/syllabus.dart';
import '../student_modules/assignments.dart';
import '../student_modules/notifications.dart';
import '../student_modules/tracking.dart';
import '../student_modules/reports.dart';
import '../student_modules/gallery.dart';
import '../student_modules/sports.dart';
import '../student_modules/payments.dart';
import '../student_modules/library.dart';
import '../student_modules/hostel.dart';

class StudentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student Modules'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: <Widget>[
          _buildGridItem(
              context, 'Assignments', Icons.assignment, AssignmentsScreen()),
          _buildGridItem(
              context, 'Time-Table', Icons.schedule, TimeTableScreen()),
          _buildGridItem(context, 'Notifications', Icons.notifications,
              NotificationsScreen()),
          _buildGridItem(context, 'Attendance', Icons.check_circle,
              StudentAttendanceScreen()),
          _buildGridItem(
              context, 'Tracking', Icons.track_changes, TrackingScreen()),
          _buildGridItem(context, 'Exams', Icons.event, ExamsScreen()),
          _buildGridItem(context, 'Reports', Icons.report, ReportsScreen()),
          _buildGridItem(
              context, 'Gallery', Icons.photo_album, GalleryScreen()),
          _buildGridItem(context, 'Sports', Icons.sports, SportsScreen()),
          _buildGridItem(context, 'Payments', Icons.payment, PaymentsScreen()),
          _buildGridItem(
              context, 'Library', Icons.library_books, LibraryScreen()),
          _buildGridItem(context, 'Hostel', Icons.home, HostelScreen()),
          _buildGridItem(context, 'Syllabus', Icons.book, SyllabusScreen()),
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
              Icon(icon, size: 40), // Smaller icon size
              SizedBox(height: 5),
              Text(title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12)), // Smaller text size
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import '../student_modules/attendance.dart';
// import '../student_modules/time_table.dart';
// import '../student_modules/exams.dart';
// import '../student_modules/syllabus.dart';

// class StudentScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Modules'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton.icon(
//               icon: Icon(Icons.check_circle, size: 30),
//               label: Text('Attendance'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => StudentAttendanceScreen()),
//                 );
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: Icon(Icons.schedule, size: 30),
//               label: Text('Time-Table'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => TimeTableScreen()),
//                 );
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: Icon(Icons.event, size: 30),
//               label: Text('Exams'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => ExamsScreen()),
//                 );
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton.icon(
//               icon: Icon(Icons.book, size: 30),
//               label: Text('Syllabus'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => SyllabusScreen()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
