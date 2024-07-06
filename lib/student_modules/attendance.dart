import 'package:flutter/material.dart';

class StudentAttendanceScreen extends StatefulWidget {
  @override
  _StudentAttendanceScreenState createState() =>
      _StudentAttendanceScreenState();
}

class _StudentAttendanceScreenState extends State<StudentAttendanceScreen> {
  final Map<String, List<Map<String, dynamic>>> attendanceData = {
    'January': List.generate(31, (index) {
      return {
        'date': '2024-01-${index + 1}',
        'status': index % 5 == 0 ? 'Absent' : 'Present',
        'punchIn': index % 5 == 0 ? null : '09:00 AM',
        'punchOut': index % 5 == 0 ? null : '05:00 PM',
      };
    }),
    'February': List.generate(28, (index) {
      return {
        'date': '2024-02-${index + 1}',
        'status': index % 7 == 0 ? 'Absent' : 'Present',
        'punchIn': index % 7 == 0 ? null : '09:00 AM',
        'punchOut': index % 7 == 0 ? null : '05:00 PM',
      };
    }),
    'March': List.generate(31, (index) {
      return {
        'date': '2024-03-${index + 1}',
        'status': index % 3 == 0 ? 'Absent' : 'Present',
        'punchIn': index % 3 == 0 ? null : '09:00 AM',
        'punchOut': index % 3 == 0 ? null : '05:00 PM',
      };
    }),
    'April': List.generate(30, (index) {
      return {
        'date': '2024-04-${index + 1}',
        'status': index % 4 == 0 ? 'Absent' : 'Present',
        'punchIn': index % 4 == 0 ? null : '09:00 AM',
        'punchOut': index % 4 == 0 ? null : '05:00 PM',
      };
    }),
    // Add more months as needed
  };

  final Map<String, bool> expandedState = {
    'January': false,
    'February': false,
    'March': false,
    'April': false,
    // Add more months as needed
  };

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Student Attendance'),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Jan'),
              Tab(text: 'Feb'),
              Tab(text: 'Mar'),
              Tab(text: 'Apr'),
              Tab(text: 'May'),
              Tab(text: 'Jun'),
              Tab(text: 'Jul'),
              Tab(text: 'Aug'),
              Tab(text: 'Sep'),
              Tab(text: 'Oct'),
              Tab(text: 'Nov'),
              Tab(text: 'Dec'),
            ],
          ),
        ),
        body: TabBarView(
          children: attendanceData.entries.map((entry) {
            String month = entry.key;
            List<Map<String, dynamic>> data = entry.value;

            int totalDays = data.length;
            int presentDays =
                data.where((record) => record['status'] == 'Present').length;
            int absentDays = totalDays - presentDays;
            double percentage = (presentDays / totalDays) * 100;

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        expandedState[month] = !(expandedState[month] ?? false);
                      });
                    },
                    child: Container(
                      color: getColorForMonth(month),
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '$month Attendance',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            (expandedState[month] ?? false)
                                ? Icons.expand_less
                                : Icons.expand_more,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (expandedState[month] ?? false) ...[
                    SizedBox(height: 10),
                    Text('Present: $presentDays days'),
                    Text('Absent: $absentDays days'),
                    Text(
                        'Attendance Percentage: ${percentage.toStringAsFixed(2)}%'),
                    SizedBox(height: 20),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('Date')),
                            DataColumn(label: Text('Status')),
                            DataColumn(label: Text('Punch In')),
                            DataColumn(label: Text('Punch Out')),
                          ],
                          rows: data.map((record) {
                            return DataRow(cells: [
                              DataCell(Text(record['date'])),
                              DataCell(Icon(
                                record['status'] == 'Present'
                                    ? Icons.check_circle
                                    : Icons.cancel,
                                color: record['status'] == 'Present'
                                    ? Colors.green
                                    : Colors.red,
                              )),
                              DataCell(Text(record['punchIn'] ?? 'N/A')),
                              DataCell(Text(record['punchOut'] ?? 'N/A')),
                            ]);
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  Color getColorForMonth(String month) {
    switch (month) {
      case 'January':
        return Colors.teal;
      case 'February':
        return Colors.blue;
      case 'March':
        return Colors.green;
      case 'April':
        return Colors.purple;
      case 'May':
        return Colors.orange;
      case 'June':
        return Colors.red;
      case 'July':
        return Colors.yellow;
      case 'August':
        return Colors.cyan;
      case 'September':
        return Colors.lime;
      case 'October':
        return Colors.pink;
      case 'November':
        return Colors.indigo;
      case 'December':
        return Colors.brown;
      default:
        return Colors.black;
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: StudentAttendanceScreen(),
  ));
}







// import 'package:flutter/material.dart';

// class StudentAttendanceScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Student Attendance'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.check_circle, size: 100, color: Colors.teal),
//             SizedBox(height: 20),
//             Text('Attendance Screen', style: TextStyle(fontSize: 24)),
//           ],
//         ),
//       ),
//     );
//   }
// }
