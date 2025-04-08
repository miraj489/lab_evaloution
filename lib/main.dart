import 'package:flutter/material.dart';

void main() => runApp(MyDriveCloneApp());

class MyDriveCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drive UI',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF121212),
        iconTheme: IconThemeData(color: Colors.white70),
      ),
      home: DriveHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DriveHomePage extends StatelessWidget {
  final List<Map<String, dynamic>> folders = [
    {
      'name': 'AR/VR & Development',
      'date': 'Sep 4, 2024',
      'icon': Icons.folder,
    },
    {
      'name': 'Colab Notebooks',
      'date': 'Nov 4, 2024',
      'icon': Icons.folder_shared,
    },
    {
      'name': 'CSE – Lec.',
      'date': 'Sep 7, 2024',
      'icon': Icons.folder,
      'color': Colors.green,
    },
    {
      'name': 'Development',
      'date': 'Dec 25, 2024',
      'icon': Icons.folder,
      'color': Colors.green,
    },
    {'name': 'FYDP', 'date': 'Sep 11, 2024', 'icon': Icons.folder},
    {'name': 'Research', 'date': 'Jul 20, 2023', 'icon': Icons.folder},
    {
      'name': 'TA',
      'date': 'Feb 23, 2024',
      'icon': Icons.folder,
      'color': Colors.green,
    },
    {
      'name': 'Zion',
      'date': 'May 6, 2023',
      'icon': Icons.folder,
      'color': Colors.deepOrange,
    },
    {
      'name': 'Git.pptx',
      'date': 'Mar 24',
      'icon': Icons.insert_drive_file,
      'color': Colors.orange,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Drive"), backgroundColor: Colors.black),
      drawer: Drawer(
        backgroundColor: Color(0xFF1E1E1E),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text('Menu', style: TextStyle(color: Colors.white)),
            ),
            drawerItem(Icons.access_time, "Recent"),
            drawerItem(Icons.workspaces_outline, "Workspaces"),
            drawerItem(Icons.offline_pin, "Offline"),
            drawerItem(Icons.delete, "Trash"),
            drawerItem(Icons.report, "Spam"),
            drawerItem(Icons.settings, "Settings"),
            drawerItem(Icons.help, "Help & feedback"),
            ListTile(
              leading: Icon(Icons.cloud, color: Colors.white70),
              title: Text("Storage", style: TextStyle(color: Colors.white)),
              subtitle: LinearProgressIndicator(
                value: 7.44 / 15,
                backgroundColor: Colors.grey[800],
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
              ),
              trailing: Text(
                "7.44 GB / 15 GB",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: folders.length,
        itemBuilder: (context, index) {
          final item = folders[index];
          return ListTile(
            leading: Icon(
              item['icon'],
              color: item['color'] ?? Colors.amber,
              size: 30,
            ),
            title: Text(item['name'], style: TextStyle(color: Colors.white)),
            subtitle: Text(
              "Modified ${item['date']}",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Icon(Icons.more_vert, color: Colors.white),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepPurple,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Starred"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Shared"),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Files"),
        ],
      ),
    );
  }

  Widget drawerItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white70),
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }
}
