import 'package:flutter/material.dart';

class StudentadmissionPage extends StatefulWidget {
  const StudentadmissionPage({super.key});

  @override
  State<StudentadmissionPage> createState() => _StudentadmissionPageState();
}

class _StudentadmissionPageState extends State<StudentadmissionPage> {
  int _currentStep = 0;

  void _nextStep() {
    if (_currentStep < 2) {
      setState(() {
        _currentStep++;
      });
    } else {
      // After submit
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Form Submitted Successfully!')),
      );
      Navigator.pop(context);
    }
  }

  void _prevStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Admission Form'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: _buildStep()),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentStep > 0)
                  ElevatedButton(
                    onPressed: _prevStep,
                    child: const Text('Back'),
                  ),
                ElevatedButton(
                  onPressed: _nextStep,
                  child: Text(_currentStep == 2 ? 'Submit' : 'Next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStep() {
    if (_currentStep == 0) {
      return _studentInfo();
    } else if (_currentStep == 1) {
      return _parentInfo();
    } else {
      return _otherDetails();
    }
  }

  Widget _studentInfo() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Student Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: const InputDecoration(labelText: 'Student Name'),
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
          ),
          TextField(decoration: const InputDecoration(labelText: 'Class')),
          TextField(decoration: const InputDecoration(labelText: 'Gender')),

          TextField(decoration: const InputDecoration(labelText: 'religion')),

          TextField(decoration: const InputDecoration(labelText: 'email')),

          TextField(decoration: const InputDecoration(labelText: 'adhar')),
          TextField(decoration: const InputDecoration(labelText: 'mobile')),
        ],
      ),
    );
  }

  Widget _parentInfo() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Parent Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            decoration: const InputDecoration(labelText: 'Father Name'),
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Mother Name'),
          ),
          TextField(
            decoration: const InputDecoration(labelText: 'Contact Number'),
            keyboardType: TextInputType.phone,
          ),
        ],
      ),
    );
  }

  Widget _otherDetails() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Other Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(decoration: const InputDecoration(labelText: 'Address')),
          TextField(
            decoration: const InputDecoration(labelText: 'Previous School'),
          ),
          TextField(decoration: const InputDecoration(labelText: 'Remarks')),
        ],
      ),
    );
  }
}
