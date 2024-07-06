import 'package:flutter/material.dart';
import '../admin_modules/manage_students.dart';
import '../admin_modules/manage_teachers.dart';
import '../admin_modules/manage_users.dart';
import '../admin_modules/view_reports.dart';
import '../admin_modules/schedule.dart';
import '../admin_modules/notifications.dart';
import '../admin_modules/settings.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Modules'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1,
        children: <Widget>[
          _buildGridItem(
              context, 'Manage Students', Icons.school, ManageStudentsScreen()),
          _buildGridItem(
              context, 'Manage Teachers', Icons.person, ManageTeachersScreen()),
          _buildGridItem(
              context, 'Manage Users', Icons.people, ManageUsersScreen()),
          _buildGridItem(
              context, 'View Reports', Icons.report, ViewReportsScreen()),
          _buildGridItem(context, 'Schedule', Icons.schedule, ScheduleScreen()),
          _buildGridItem(context, 'Notifications', Icons.notifications,
              NotificationsScreen()),
          _buildGridItem(context, 'Settings', Icons.settings, SettingsScreen()),
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
// import '../admin_modules/manage_users.dart';
// import '../admin_modules/view_reports.dart';
// import '../admin_modules/schedule.dart';
// import '../admin_modules/notifications.dart';
// import '../admin_modules/settings.dart';

// class AdminScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Admin Modules'),
//       ),
//       body: GridView.count(
//         crossAxisCount: 3,
//         childAspectRatio: 1,
//         children: <Widget>[
//           _buildGridItem(
//               context, 'Manage Users', Icons.people, ManageUsersScreen()),
//           _buildGridItem(
//               context, 'View Reports', Icons.report, ViewReportsScreen()),
//           _buildGridItem(context, 'Schedule', Icons.schedule, ScheduleScreen()),
//           _buildGridItem(context, 'Notifications', Icons.notifications,
//               NotificationsScreen()),
//           _buildGridItem(context, 'Settings', Icons.settings, SettingsScreen()),
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

// // class AdminScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Admin Screen'),
// //       ),
// //       body: Center(
// //         child: Text('Admin Screen'),
// //       ),
// //     );
// //   }
// // }
