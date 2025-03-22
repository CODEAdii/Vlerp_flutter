import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vlerp/components/CustomTextFormField.dart';
import 'package:vlerp/components/customDropDown.dart';

class StudentadmissionPage extends GetView<StudentadmissionPageController> {
  final formKey = GlobalKey<FormState>();
  StudentadmissionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Admission Form'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: GetBuilder<StudentadmissionPageController>(
        builder: (controller) {
          return Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Expanded(child: _buildStep(controller)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (controller.currentStep > 0)
                      ElevatedButton(
                        onPressed: controller.previousStep,
                        child: const Text('Back'),
                      ),
                    ElevatedButton(
                      onPressed: () {
                        if (controller.currentStep < 2) {
                          controller.nextStep();
                        } else {
                          if (controller.formKey.currentState!.validate()) {}
                        }
                      },
                      child: Text(
                        controller.currentStep == 2 ? 'Submit' : 'Next',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStep(StudentadmissionPageController controller) {
    if (controller.currentStep == 0) {
      return _studentInfo(controller);
    } else if (controller.currentStep == 1) {
      return _parentInfo(controller);
    } else {
      return _admissionDetails(controller);
    }
  }

  Widget _studentInfo(StudentadmissionPageController controller) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Student Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.firstnameController,
              label: 'First Name',
              validator:
                  (value) =>
                      value!.isEmpty ? 'Please enter a first name' : null,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.middlenameController,
              label: 'Middle Name',
              validator:
                  (value) =>
                      value!.isEmpty ? 'Please enter a middle name' : null,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.lastnameController,
              label: 'Last Name',
              validator:
                  (value) => value!.isEmpty ? 'Please enter a last name' : null,
            ),
            const SizedBox(height: 20),

            CustomDropDown(
              label: 'Gender',
              value: controller.selectedGender,
              items: ['Male', 'Female', 'Other'],
              validator:
                  (value) =>
                      value!.isEmpty ? 'Please enter a date of birth' : null,
              onChanged: (value) {
                controller.selectedGender = value;
              },
            ),
            const SizedBox(height: 15),
            CustomDropDown(
              label: 'Caste',
              value: controller.selectedCaste,
              items: ['General', 'OBC', 'SC', 'ST', 'MOBC', 'Other'],
              validator:
                  (value) => value!.isEmpty ? 'Please select your caste' : null,
              onChanged: (value) {
                controller.selectedCaste = value;
              },
            ),
            const SizedBox(height: 15),
            CustomDropDown(
              label: 'Religion',
              value: controller.selectedReligion,
              items: ['Hindu', 'Muslim', 'Christian', 'Sikh', 'Other'],
              validator:
                  (value) =>
                      value!.isEmpty ? 'Please select your religion' : null,
              onChanged: (value) {
                controller.selectedReligion = value;
              },
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.phoneController,
              label: 'Phone Number',
              validator:
                  (value) =>
                      value!.isEmpty ? 'Please enter a phone number' : null,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.emailController,
              label: 'Email',
              validator:
                  (value) => value!.isEmpty ? 'Please enter an email' : null,
            ),
            const SizedBox(height: 20),
            CustomTextFormField(
              controller: controller.adharController,
              label: 'Aadhar Number',
              validator:
                  (value) =>
                      value!.isEmpty ? 'Please enter your Aadhar Number' : null,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _parentInfo(StudentadmissionPageController controller) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Parent Information ',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          const Text(
            'Father',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.fatherFirstNameController,
            label: 'Father First Name',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.fatherMiddleNameController,
            label: 'Father Middle Name',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.fatherLastNameController,
            label: 'Father Last Name',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.fatherContactNumberController,
            label: 'Father Contact Number',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.fatherOccupationController,
            label: 'Father Occupation',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.fatherEmailController,
            label: 'Father Email',
          ),
          const SizedBox(height: 20),

          const SizedBox(height: 20),
          const Text(
            'Mother',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.motherFirstNameController,
            label: 'Mother First Name',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.motherMiddleNameController,
            label: 'Mother Middle Name',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.motherLastNameController,
            label: 'Mother Last Name',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.motherContactNumberController,
            label: 'Mother Contact Number',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.motherOccupationController,
            label: 'Mother Occupation',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.motherEmailController,
            label: 'Mother Email',
          ),
          const SizedBox(height: 20),

          const SizedBox(height: 20),
          const Text(
            'Guardian Information (if any)',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.guardianNameController,
            label: 'Guardian Name',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.guardianRelationController,
            label: 'Guardian Relation',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.guardianContactNumberController,
            label: 'Guardian Contact Number',
          ),
          const SizedBox(height: 20),

          CustomTextFormField(
            controller: controller.guardianEmailController,
            label: 'Guardian Email',
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _admissionDetails(StudentadmissionPageController controller) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Admission Details',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          CustomDropDown(
            label: 'Type',
            value: controller.selectedAdmissionType,
            items: ['New enrollment', 'Renewal'],
            validator:
                (value) =>
                    value!.isEmpty ? 'Please enter a date of birth' : null,
            onChanged: (value) {
              controller.selectedAdmissionType = value;
            },
          ),

          const SizedBox(height: 15),
          CustomTextFormField(
            controller: controller.classController,
            label: 'Class',
          ),

          const SizedBox(height: 15),
          CustomTextFormField(
            controller: controller.sectionController,
            label: 'Section',
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            controller: controller.admissionDateController,
            label: 'Admission Date',
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            controller: controller.rollController,
            label: 'Roll',
          ),
          const SizedBox(height: 15),
          CustomTextFormField(
            controller: controller.admissionFeeController,
            label: 'Admission Fee',
          ),
        ],
      ),
    );
  }
}

class StudentadmissionPageController extends GetxController {
  final currentStep = 0.obs;
  final formKey = GlobalKey<FormState>();

  // Controllers for all fields
  final firstnameController = TextEditingController();
  final middlenameController = TextEditingController();
  final lastnameController = TextEditingController();
  final dobController = TextEditingController();

  final genderController = TextEditingController();
  final religionController = TextEditingController();
  final emailController = TextEditingController();
  final adharController = TextEditingController();
  final mobileController = TextEditingController();
  final phoneController = TextEditingController();
  final casteController = TextEditingController();

  final fatherFirstNameController = TextEditingController();
  final fatherMiddleNameController = TextEditingController();
  final fatherLastNameController = TextEditingController();
  final fatherContactNumberController = TextEditingController();
  final fatherOccupationController = TextEditingController();
  final fatherEmailController = TextEditingController();

  final motherFirstNameController = TextEditingController();
  final motherMiddleNameController = TextEditingController();
  final motherLastNameController = TextEditingController();
  final motherContactNumberController = TextEditingController();
  final motherOccupationController = TextEditingController();
  final motherEmailController = TextEditingController();

  final guardianNameController = TextEditingController();
  final guardianRelationController = TextEditingController();
  final guardianContactNumberController = TextEditingController();
  final guardianEmailController = TextEditingController();

  final rollController = TextEditingController();
  final admissionFeeController = TextEditingController();
  final admissionDateController = TextEditingController();
  final classController = TextEditingController();
  final sectionController = TextEditingController();
  final typeController = TextEditingController();
  String? selectedGender;
  String? selectedCaste;
  String? selectedReligion;
  String? selectedAdmissionType;
  int get step => currentStep.value;

  void nextStep() {
    if (currentStep.value < 2) {
      currentStep.value++;
      update();
    }
  }

  void previousStep() {
    if (currentStep.value > 0) {
      currentStep.value--;
      update();
    }
  }
}

class StudentadmissionPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<StudentadmissionPageController>(StudentadmissionPageController());
  }
}
