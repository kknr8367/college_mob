import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  final List<Map<String, dynamic>> attendanceData = [
    {
      'date': '2024-07-01',
      'studentName': 'John Doe',
      'status': 'Present',
      'time': '08:00 AM',
      'percentage': 95.0,
      'remarks': 'On time',
    },
    {
      'date': '2024-07-01',
      'studentName': 'Jane Smith',
      'status': 'Absent',
      'time': '',
      'percentage': 85.0,
      'remarks': 'Sick leave',
    },
    // Add more records as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attendance Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: DataTable(
          columns: [
            DataColumn(label: Text('Date')),
            DataColumn(label: Text('Student Name')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Time')),
            DataColumn(label: Text('Percentage')),
            DataColumn(label: Text('Remarks')),
          ],
          rows: attendanceData.map((attendance) {
            return DataRow(cells: [
              DataCell(Text(attendance['date'])),
              DataCell(Text(attendance['studentName'])),
              DataCell(Text(attendance['status'])),
              DataCell(Text(attendance['time'])),
              DataCell(Text(attendance['percentage'].toString() + '%')),
              DataCell(Text(attendance['remarks'])),
            ]);
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AttendanceScreen(),
  ));
}


// import 'package:flutter/material.dart';

// class AttendanceScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Attendance Screen'),
//       ),
//       body: Center(
//         child: Text('Attendance Screen'),
//       ),
//     );
//   }
// }
