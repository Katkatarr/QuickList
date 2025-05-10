import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Welcome Text
            Text(
              'Welcome to QuickList!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Dashboard Stats
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _buildDashboardCard('Tasks', '12', Icons.check_circle),
                _buildDashboardCard('Completed', '5', Icons.done),
                _buildDashboardCard('Pending', '7', Icons.pending),
              ],
            ),
            SizedBox(height: 40),

            // Recent Activity Section
            Text(
              'Recent Activity',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            // Recent activity list (mockup)
            ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Task 1 completed'),
              subtitle: Text('Completed on May 10, 2025'),
            ),
            ListTile(
              leading: Icon(Icons.pending, color: Colors.orange),
              title: Text('Task 2 pending'),
              subtitle: Text('Due by May 12, 2025'),
            ),
          ],
        ),
      ),
    );
  }

  // Helper function to create a dashboard card
  Widget _buildDashboardCard(String title, String count, IconData icon) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        width: 100,
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text(
              count,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
