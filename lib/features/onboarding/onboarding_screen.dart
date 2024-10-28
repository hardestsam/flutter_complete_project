import 'package:flutter/material.dart';
import 'package:flutter_complete_project/features/onboarding/widgets/doctor_image_and_text.dart';
import 'package:flutter_complete_project/features/onboarding/widgets/get_started_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_complete_project/features/onboarding/widgets/doc_logo_and_name.dart';

import '../../core/theming/styles.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.only(
                  top: 30.h,  // Removed 'const' to allow non-constant ScreenUtil expressions
                  bottom: 30.h
                ),
              child:  Column(
                children: [
                  const DocLogoAndName(),
                  SizedBox(height: 30.h),
                  const DoctorImageAndText(),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30.w),
                          child: Column(
                            children: [
                              Text(
                                  'Manage and schedule all of your medical appointment easily with doctors to get a new appointment ',
                                   style: TextStyles.font13GrayRegular,
                                   textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 30.h,),
                              const GetStartedButton(),


                            ],
                          ),
                        )
                ],
              ),
            ),
          )
      ),
    );
  }
}
