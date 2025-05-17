import 'package:flutter/material.dart';

class MyTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Make the app bar transparent like the image
        elevation: 0, // Remove shadow from the app bar
        title: Text(
          'My Task',
          style: TextStyle(
            color: Colors.black, // Change title text color to black
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Date section
            Text(
              'Today, 27 March 2021', // Match the date format in the image
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),

            // Task List Section
            Expanded(
              child: ListView(
                children: <Widget>[
                  // Task Section 1
                  _buildTaskSection('Sharing UI Design - Basic',
                      '27 March 2020', Icons.access_alarm),

                  // Workspace Section
                  _buildTaskSection('Research Product for UI18',
                      'Today 05:00 AM', Icons.check_circle),
                  _buildTaskSection('Create Action Plan for Product',
                      'Today 13:05 PM', Icons.pending),
                  _buildTaskSection('Design Multi-Preview', 'Today 05:00 AM',
                      Icons.access_time),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create each task section
  Widget _buildTaskSection(String taskName, String taskDate, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Colors.grey.shade300, width: 1)),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: icon == Icons.check_circle
              ? Colors.green
              : icon == Icons.pending
                  ? Colors.orange
                  : Colors.blue,
        ),
        title: Text(
          taskName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          taskDate,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Add action to navigate or show more details for the task
        },
      ),
    );
  }
}
