import 'package:country_code_picker_plus/country_code_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

import 'package:get/get.dart';

import '../../../../config/app_assets.dart';
import '../../../../global_components/custom_circular_avatar_image.dart';
import '../../../../global_components/custom_drodown_button.dart';
import '../../../../global_components/custom_fonts.dart';
import '../../../../global_components/custom_gradient_elevated_button.dart';
import '../../../../global_components/custom_textformfield.dart';
import '../../../../routes/app_pages.dart';
import '../../../../utils/colors.dart';
import '../../../../utils/responsive.dart';
import '../controllers/complete_profile_controller.dart';


class CompleteProfileView extends GetView<CompleteProfileController> {
  const CompleteProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              AppAssets.APP_BG,
              fit: BoxFit.cover,
            ),
          ),
          // Custom AppBar placed inside body
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  const Text(
                    'Complete Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inter'),
                  ),
                  const SizedBox(width: 40),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: Container(
                width: Responsive.getWidth(context) - 40,
                height: Responsive.getHeight(context) * 0.9,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomCircularImage(
                        imageHeight: 80,
                        imageWidth: 80,
                        imageUrl: '',
                        // errorImageUrl: 'https://www.gravatar.com/avatar'
                      ),
                      const SizedBox(height: 20),
                      // Submit Button
                      CustomGradientElevatedButton(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        borderRadius: BorderRadius.circular(30),
                        height: 50,
                        text: 'Upload Photo',
                        fontWeight: FontWeight.bold,
                        gradientColors: const [
                          BUTTON_GRADIENT_FIRST_COLOR,
                          BUTTON_GRADIENT_SECOND_COLOR,
                        ],
                        onPressed: () {
                          // Handle form submission
                        },
                      ),
                      const SizedBox(height: 20),

                      // First and Last Name
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'First Name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                CustomTextFormField(
                                  hintText: 'John',
                                  hintStyle: CustomTextStyles.interBlack(
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10), // Space between fields
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Last Name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                CustomTextFormField(
                                  hintText: 'Doe',
                                  hintStyle: CustomTextStyles.interBlack(
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // Email Address Field
                      const Text(
                        'Email Address',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        hintText: 'johndoe@gmail.com',
                        hintStyle:
                            CustomTextStyles.interBlack(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      // Mobile Number Field (International Phone Number)
                      const Text(
                        'Mobile Number',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Container(
                      //   padding: const EdgeInsets.only(left: 10, right: 10),
                      //   decoration: BoxDecoration(
                      //       border: Border.all(color: Colors.white),
                      //       borderRadius: BorderRadius.circular(10)),
                      //   child: InternationalPhoneNumberInput(
                      //     textStyle: TextStyle(color: Colors.white),
                      //     selectorTextStyle: TextStyle(color: Colors.white),
                      //     cursorColor: Colors.white,
                      //     // autoValidateMode:
                      //     //     AutovalidateMode
                      //     //         .onUserInteraction,
                      //     keyboardType: const TextInputType.numberWithOptions(
                      //         signed: true, decimal: true),
                      //     // textFieldController: controller
                      //     //     .addPhoneController.value,
                      //     //  initialValue: controller.number,
                      //     onInputChanged: (phoneNumber) {
                      //       // controller.fullPhoneNumber?.value = phoneNumber.phoneNumber??'';
                      //       // debugPrint(
                      //       //   ' FULLL NUMBER::: ${controller.fullPhoneNumber?.value}');
                      //       // debugPrint(
                      //       //     phoneNumber.phoneNumber);
                      //     },
                      //     selectorConfig: const SelectorConfig(
                      //       selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                      //       useBottomSheetSafeArea: true,
                      //     ),
                      //     inputDecoration: const InputDecoration(
                      //       hintStyle: TextStyle(color: Colors.grey),
                      //       // labelText: 'Phone',
                      //       border:
                      //           OutlineInputBorder(borderSide: BorderSide.none),
                      //       hintText: 'Enter phone number',
                      //     ),
                      //   ),
                      // ),

                      Container(
                        height: 50,
                        width: double.infinity,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            // Country Code Picker
                            Expanded(
                              child: Container(
                                width: 50,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  // border: Border.,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: CountryCodePicker(
                                  closeIcon: const Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                  searchDecoration: const InputDecoration(
                                      suffixIconColor: Colors.white,
                                      prefixIconColor: Colors.white,
                                      iconColor: Colors.white),

                                  searchStyle:
                                      const TextStyle(color: Colors.white),

                                  dialogBackgroundColor: PRIMARY_COLOR,
                                  dialogTextStyle:
                                      const TextStyle(color: Colors.white),
                                  onChanged: (country) {
                                    // Handle country selection
                                  },
                                  initialSelection:
                                      'BD', // Set default country code (US)
                                  showFlag: false, // Don't show flag
                                  showDropDownButton: true,
                                  showCountryOnly: false,
                                  showOnlyCountryWhenClosed: true,
                                  alignLeft: true, // Align text to the left
                                  textStyle: const TextStyle(
                                      color: Colors.white), // Custom text style
                                ),
                              ),
                            ),
                            const SizedBox(
                                width:
                                    10), // Space between code picker and text field
                            // Phone Number TextFormField
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.phone,
                                style: const TextStyle(color: Colors.white),
                                decoration: const InputDecoration(
                                  hintText: 'Enter phone number',
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Present Address Field
                      const Text(
                        'Present Address',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        hintText: '1234 Main St',
                        hintStyle:
                            CustomTextStyles.interBlack(color: Colors.grey),
                      ),
                      const SizedBox(height: 10),
                      // Gender Field using CustomDropdown
                      const Text(
                        'Gender',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomDropdownButton(
                        dropDownFieldColor: Colors.transparent,
                        items: const ['Male', 'Female', 'Other'],
                        hintText: 'Select Gender',
                        onChanged: (value) {
                          debugPrint(value); // Handle gender selection
                        },
                      ),
                      const SizedBox(height: 10),
                      // Document Type Field using CustomDropdown
                      const Text(
                        'Document Type',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomDropdownButton(
                        dropDownColor: PRIMARY_COLOR,
                        dropDownFieldColor: Colors.transparent,
                        items: const ['Passport', 'ID Card', 'Driver License'],
                        hintText: 'Select Document Type',
                        onChanged: (value) {
                          debugPrint(value); // Handle document type selection
                        },
                      ),
                      const SizedBox(height: 10),
                      // Email Address Field
                      const Text(
                        'Upload Document',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: DottedBorder(
                          color: Colors.white,
                          strokeWidth: 2,
                          dashPattern: const [8, 4],
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(12),
                          child: Container(
                            width: double.infinity,
                            height: 100,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Image.asset(
                                //   'assets/icon/group_profile/file_upload.png',
                                //   height: 50,
                                //   width: 50,
                                //   fit: BoxFit.cover,
                                // ),
                                // const SizedBox(height: 16),
                                // const Text(
                                //   'Upload Files',
                                //   style: TextStyle(
                                //     fontSize: 18,
                                //     fontWeight: FontWeight.bold,
                                //     color: Colors.black,
                                //   ),
                                // ),
                                // const SizedBox(height: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    // controller.pickFiles();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: const BorderSide(
                                          color: BUTTON_GRADIENT_SECOND_COLOR,
                                          width: 3),
                                    ),
                                  ),
                                  child: const Text(
                                    'Browse Files',
                                    style: TextStyle(
                                        color: BUTTON_GRADIENT_SECOND_COLOR,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Email Address Field
                      const Text(
                        'Document No(optional)',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomTextFormField(
                        hintText: '987546623',
                        hintStyle:
                            CustomTextStyles.interBlack(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      // Submit Button
                      CustomGradientElevatedButton(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        text: 'Submit',
                        fontWeight: FontWeight.bold,
                        gradientColors: const [
                          BUTTON_GRADIENT_FIRST_COLOR,
                          BUTTON_GRADIENT_SECOND_COLOR,
                        ],
                        onPressed: () {
                          // Handle form submission
                          Get.toNamed(Routes.HOME);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
