import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlerp/auth/login_page.dart';
import 'package:vlerp/pages/attendance_page.dart';
import 'package:vlerp/pages/dashboard_page.dart';
import 'package:vlerp/pages/studentprofile_page.dart';
import 'package:vlerp/pages/studentadmission_page.dart';
import 'package:vlerp/themes/light.dart';
import 'components/app_layout.dart';
import 'pages/student_page.dart';
import 'pages/staff_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My First App',
      theme: lightTheme,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: "/",
          page: () => LoginPage(),
          binding: LoginPageBindings(),
        ),
        GetPage(name: "/dashboard", page: () => DashboardPage()),
        GetPage(
          name: "/studentadmission",
          page: () => StudentadmissionPage(),
          binding: StudentadmissionPageBinding(),
        ),
        GetPage(
          name: "/student",
          page: () => StudentPage(),
          binding: StudentPageBinding(),
        ),
        GetPage(
          name: "/staff",
          page: () => StaffPage(),
          binding: StaffPageBinding(),
        ),
        GetPage(
          name: "/attendance",
          page: () => AttendancePage(),
          binding: AttendancePageBinding(),
        ),
        GetPage(
          name: "/studentprofile",
          page: () => StudentProfilePage(),
          binding: StudentProfilePageBinding(),
        ),
      ],
    );
  }
}
