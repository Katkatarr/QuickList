import 'package:flutter/material.dart';

class MyTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Title
            Text(
              'Your Tasks',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Task List
            Expanded(
              child: ListView(
                children: <Widget>[
                  // Task Item 1
                  _buildTaskItem(
                      'Task 1', 'Due: May 10, 2025', Icons.check_circle),
                  // Task Item 2
                  _buildTaskItem('Task 2', 'Due: May 12, 2025', Icons.pending),
                  // Task Item 3
                  _buildTaskItem(
                      'Task 3', 'Due: May 15, 2025', Icons.access_time),
                  // Task Item 4
                  _buildTaskItem(
                      'Task 4', 'Due: May 20, 2025', Icons.check_circle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create each task item
  Widget _buildTaskItem(String taskName, String dueDate, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: icon == Icons.check_circle
            ? Colors.green
            : icon == Icons.pending
                ? Colors.orange
                : Colors.blue,
      ),
      title: Text(taskName),
      subtitle: Text(dueDate),
      trailing: Icon(Icons.arrow_forward),
      onTap: () {
        // Add action to navigate or show more details for the task
      },
    );
  }
}
