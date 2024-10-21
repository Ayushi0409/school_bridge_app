import 'package:flutter/material.dart';

class StudentHolidayScreen extends StatelessWidget {
  final List<Map<String, String>> holidays = [
    {'name': 'MAKAR SANKRANTI', 'date': '14 Jan, 2024'},
    {'name': 'REPUBLIC DAY', 'date': '26 Jan, 2024'},
    {'name': 'RAMZAN-ID', 'date': '10 Apr, 2024'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF134B70),
        title: const Text('HOLIDAY'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: holidays.length,
          itemBuilder: (context, index) {
            return HolidayCard(
              holidayName: holidays[index]['name']!,
              holidayDate: holidays[index]['date']!,
            );
          },
        ),
      ),
    );
  }
}

class HolidayCard extends StatelessWidget {
  final String holidayName;
  final String holidayDate;

  HolidayCard({
    required this.holidayName,
    required this.holidayDate,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
          color: Colors.blue, // Border color
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.radio_button_checked, color: Colors.blue, size: 30),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  holidayName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  holidayDate,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
