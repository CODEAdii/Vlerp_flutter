import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // First row: Student and Staff cards
                Row(
                  children: [
                    Expanded(
                      child: dashboardCard("Student", "1200", Colors.blue),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: dashboardCard("Staff", "\$24K", Colors.green),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // Second row: big sections
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(child: bigSection("Recent Activities")),
                    const SizedBox(width: 16),
                    Expanded(child: bigSection("Notifications")),
                  ],
                ),
                const SizedBox(height: 30),

                const SizedBox(height: 16),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    bottomIcon(Icons.person, "Profile"),
                    bottomIcon(Icons.school, "Courses"),
                    bottomIcon(Icons.payment, "Payments"),
                    bottomIcon(Icons.settings, "Settings"),
                    bottomIcon(Icons.email, "Email"),
                    bottomIcon(Icons.report, "Report"),
                    bottomIcon(Icons.event, "Events"),
                    bottomIcon(Icons.more_horiz, "More"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget dashboardCard(String title, String value, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          const SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 16, color: color)),
        ],
      ),
    );
  }

  Widget bigSection(String title) {
    return Container(
      padding: const EdgeInsets.all(16),
      height: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget bottomIcon(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(radius: 24, child: Icon(icon, size: 28)),
        const SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
