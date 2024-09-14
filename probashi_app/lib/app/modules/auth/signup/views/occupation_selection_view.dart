import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi_app/app/components/button.dart';
import 'package:probashi_app/app/modules/auth/signup/controllers/signup_controller.dart';
import 'package:probashi_app/app/routes/app_pages.dart';

class OccupationSelectionView extends GetView<SignupController> {
  const OccupationSelectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(Icons.arrow_back_ios, color: Colors.black),
            ),
            const Text('সকল দক্ষতাসমূহ', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
      body: Container(
        height: Get.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(height: 1),
              const SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'খোঁজ করুন',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Obx(() {
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.occupations.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            side: const BorderSide(color: Colors.green),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          onPressed: () {
                            controller.selectOccupation(index);
                          },
                          child: Text(controller.occupations[index].name),
                        ),
                      );
                    },
                  );
                }),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(
                        onPressed: () {
                          Get.toNamed(Routes.GENDER); // Or another route
                        },
                        text: 'সম্পন্ন',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
