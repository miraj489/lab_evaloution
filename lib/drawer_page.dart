import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF1E1E1E),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.black),
            child: Text(
              'Drive Menu',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          _buildDrawerItem(Icons.access_time, "Recent"),
          _buildDrawerItem(Icons.workspaces_outline, "Workspaces"),
          _buildDrawerItem(Icons.offline_pin, "Offline"),
          _buildDrawerItem(Icons.delete, "Trash"),
          _buildDrawerItem(Icons.report, "Spam"),
          _buildDrawerItem(Icons.settings, "Settings"),
          _buildDrawerItem(Icons.help_outline, "Help & feedback"),
          const Divider(color: Colors.white30),
          ListTile(
            leading: const Icon(Icons.cloud, color: Colors.white70),
            title: const Text("Storage", style: TextStyle(color: Colors.white)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                LinearProgressIndicator(
                  value: 7.44 / 15,
                  backgroundColor: Colors.grey[800],
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Colors.blueAccent,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  "7.44 GB of 15 GB used",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          const Divider(color: Colors.white30),
          _buildDrawerItem(Icons.star, "Starred"),
          _buildDrawerItem(Icons.folder_shared, "Shared with me"),
          _buildDrawerItem(Icons.upload_file, "Uploads"),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {
        // Add navigation or functionality here
      },
    );
  }
}
