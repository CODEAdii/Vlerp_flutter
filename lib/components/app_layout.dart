import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AppLayout extends StatelessWidget {
  final Widget child;
  final bool showAppBar;

  const AppLayout({super.key, required this.child, this.showAppBar = false});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar ? AppBar(title: const Text("My Flutter App")) : null,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(LucideIcons.layoutDashboard),
              title: const Text('Dashboard'),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            ListTile(
              leading: const Icon(LucideIcons.user),
              title: const Text('Student'),
              onTap: () {
                Navigator.pushNamed(context, '/student');
              },
            ),
            ListTile(
              leading: const Icon(LucideIcons.settings),
              title: const Text('Staff'),
              onTap: () {
                Navigator.pushNamed(context, '/staff');
              },
            ),
            ListTile(
              leading: const Icon(LucideIcons.calendar),
              title: const Text('Attendance'),
              onTap: () {
                Navigator.pushNamed(context, '/attendance');
              },
            ),
            const SizedBox(height: 60), // This adds spacing between sections
            const Divider(), // A line to separate other menus
            ListTile(
              leading: const Icon(LucideIcons.logIn),
              title: const Text('Login'),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
            ListTile(
              leading: const Icon(LucideIcons.userPlus),
              title: const Text('Register'),
              onTap: () {
                Navigator.pushNamed(context, '/register');
              },
            ),
          ],
        ),
      ),
      body: child,
    );
  }
}
