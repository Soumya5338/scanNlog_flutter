import 'package:flutter/material.dart';
import 'approved_forms_page.dart';
import 'forms_to_review_page.dart';

class ManagerDashboard extends StatefulWidget {
  const ManagerDashboard({Key? key}) : super(key: key);

  @override
  State<ManagerDashboard> createState() => _ManagerDashboardState();
}

class _ManagerDashboardState extends State<ManagerDashboard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  List<String> notifications = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text("Manager Dashboard"),
        backgroundColor: const Color(0xFF1c3a63),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              if (notifications.isNotEmpty) {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: const Text('Notifications'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: notifications.map((note) => Text(note)).toList(),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("No new notifications")),
                );
              }
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF1c3a63)),
              child: Text(
                "Manager Profile",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Edit Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/edit-profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.check_circle),
              title: const Text('Approved Forms'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/approved-forms');
              },
            ),
            ListTile(
              leading: const Icon(Icons.assignment_late),
              title: const Text('Forms to Review'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/forms-to-review');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Welcome to Manager Dashboard",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
