import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_starter_2/app/config/app_assets.dart';
import 'package:getx_starter_2/app/global_components/custom_fonts.dart';
import 'package:getx_starter_2/app/utils/responsive.dart';

class SignUpTopSection extends StatelessWidget {
  const SignUpTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Responsive.getWidth(context),
      padding: const EdgeInsetsDirectional.only(
          top: 56, start: 16, end: 16, bottom: 28),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.BG_STACK), fit: BoxFit.cover),
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(24), right: Radius.circular(24))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                AppAssets.APP_LOGO,
                height: 72,
                width: 72,
              ),
              const SizedBox(width: 8),
              const Text(
                'Market Logic',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Inter',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Create a New',
            style: CustomTextStyles.subtitleInter(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 4),
          Text(
            'Account',
            style: CustomTextStyles.subtitleInter(
                fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 12),
          RichText(
            text: TextSpan(
              text: 'Already have an account. ',
              style: CustomTextStyles.subtitleInter(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
              ),
              children: [
                TextSpan(
                  text: 'Login',
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Get.back(); // Navigate to the SignUp screen
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
