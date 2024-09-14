import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:probashi_app/app/components/button.dart';
import 'package:probashi_app/app/modules/auth/signup/controllers/signup_controller.dart';
import 'package:probashi_app/app/modules/auth/signup/views/occupation_selection_view.dart';
import 'package:probashi_app/app/routes/app_pages.dart';

class CountrySelectionView extends GetView<SignupController> {
  const CountrySelectionView({Key? key}) : super(key: key);

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
            const Text('দেশ নির্বাচন', style: TextStyle(color: Colors.black)),
          ],
        ),
        actions: [
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.green),
                  ),
                ),
                onPressed: () {},
                child: const Text('EN'),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.green,
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: const Text('বাংলা'),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ],
      ),
      body: Container(
        height: Get.height,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Divider(height: 1),
              const SizedBox(height: 40),
              const Text(
                'কমপক্ষে তিনটি (৩) দেশ নির্বাচন করুন',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'We’ll help you create a new account in a few easy steps.',
                style: TextStyle(color: Colors.grey.shade700),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(40),
                child: Obx(() {
                  return GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: controller.countries.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.black,
                          side: const BorderSide(color: Colors.green),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          controller.selectCountry(index);
                        },
                        icon: Image.asset(controller.countries[index].flag),
                        label: Text(controller.countries[index].name),
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
                          Get.to(OccupationSelectionView());
                        },
                        text: 'পরবর্তী',
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
