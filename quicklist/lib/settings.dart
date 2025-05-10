import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Title
            Text(
              'App Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            // Notification Settings
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              subtitle: Text('Enable or disable app notifications'),
              trailing: Switch(
                value: true, // Placeholder for switch value
                onChanged: (bool value) {
                  // Logic to handle toggle state
                },
              ),
            ),

            // Language Settings
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Language'),
              subtitle: Text('Change app language'),
              onTap: () {
                // Navigate to language settings page (if applicable)
              },
            ),

            // Account Settings
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Account Settings'),
              subtitle: Text('Manage your account information'),
              onTap: () {
                // Navigate to account settings page (if applicable)
              },
            ),
            SizedBox(height: 20),

            // Sign out Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Logic for signing out
                },
                child: Text('Sign Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
