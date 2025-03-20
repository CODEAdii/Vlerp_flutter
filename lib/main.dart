import 'package:flutter/material.dart';
import 'package:vlerp/auth/login_page.dart';
import 'package:vlerp/auth/register_page.dart';
import 'package:vlerp/pages/about_page.dart';
import 'package:vlerp/pages/dashboard_page.dart';
import 'components/app_layout.dart';
import 'pages/home_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: '/',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/': (context) => const AppLayout(child: HomePage()),
        '/settings': (context) => const AppLayout(child: SettingsPage()),
        '/about': (context) => const AppLayout(child: AboutPage()),
        '/dashboard': (context) => const AppLayout(child: DashboardPage()),
      },
    );
  }
}
