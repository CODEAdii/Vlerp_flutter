import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StudentProfilePage extends GetView<StudentProfilePageController> {
  const StudentProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Student Profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
      ),
      body: const ProfileTabContent(),
    );
  }
}

class ProfileTabContent extends StatelessWidget {
  const ProfileTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          _buildProfileHeader(),
          const SizedBox(height: 20),
          StudentProfilePageController.buildSectionTitle('Basic Information'),
          StudentProfilePageController.buildInfoRow(
            'Admission Number',
            'RPS/23/789',
          ),
          StudentProfilePageController.buildInfoRow(
            'Admission Date',
            '15-06-2022',
          ),
          StudentProfilePageController.buildInfoRow(
            'Date of Birth',
            '25-03-2008',
          ),
          StudentProfilePageController.buildInfoRow('Gender', 'Male'),
          StudentProfilePageController.buildInfoRow('Category', 'General'),
          StudentProfilePageController.buildInfoRow('Religion', 'Hindu'),
          StudentProfilePageController.buildInfoRow('Blood Group', 'B+'),
          const SizedBox(height: 20),
          StudentProfilePageController.buildSectionTitle(
            'Parent / Guardian Details',
          ),
          StudentProfilePageController.buildInfoRow(
            'Father\'s Name',
            'Rajesh Kumar',
          ),
          StudentProfilePageController.buildInfoRow(
            'Mother\'s Name',
            'Sunita Devi',
          ),
          StudentProfilePageController.buildInfoRow(
            'Contact Number',
            '+91 654646541654',
          ),
          StudentProfilePageController.buildInfoRow(
            'Residential Address',
            '27, xxxxxxxxx,\nSector 21, Gurugram, Haryana',
          ),
        ],
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(radius: 40),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Arjun Mehta',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4),
            Text(
              'Class XII - Science',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Text(
              'Roll No: 17',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(height: 4),
            Text(
              'Riverside Public School',
              style: TextStyle(color: Colors.black87, fontSize: 15),
            ),
          ],
        ),
      ],
    );
  }
}

class StudentProfilePageController extends GetxController {
  static Widget buildSectionTitle(String title) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }

  static Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140,
            child: Text(
              label,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(color: Colors.black87, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}

class StudentProfilePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StudentProfilePageController>(StudentProfilePageController());
  }
}
