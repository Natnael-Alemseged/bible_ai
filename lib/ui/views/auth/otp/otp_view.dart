import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';

import '../../../../core/widgets/app_button.dart';

import '../../../../../core/constants/app_colors.dart';
import '../../../../../core/constants/ui_helpers.dart';
import 'otp_viewmodel.dart';

class OtpView extends StackedView<OtpViewModel> {
  const OtpView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OtpViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Verification Email',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
                verticalSpaceSmall,
                const Text(
                  'Please enter the code we just sent to email',
                  style: TextStyle(
                    fontSize: 16,
                    color: darkGreyColor,
                  ),
                ),
                verticalSpaceSmall,
                const Text(
                  'johndoe@gmail.com',
                  style: TextStyle(
                    fontSize: 16,
                    color: blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpaceLarge,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child:
                      // 🔥 OTP Input Field
                      PinCodeTextField(
                    appContext: context,
                    length: 4,
                    controller: viewModel.otpController,
                    keyboardType: TextInputType.number,
                    autoFocus: true,
                    animationType: AnimationType.scale,
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: blackColor,
                    ),
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 50,
                      fieldWidth: 46,
                      activeFillColor: whiteColor,
                      inactiveFillColor: whiteColor,
                      selectedFillColor: whiteColor,
                      activeColor: primaryColor,
                      selectedColor: primaryColor,
                      inactiveColor: Colors.grey,
                      borderWidth: 1.5,
                    ),
                    cursorColor: blackColor,
                    enableActiveFill: false,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // 🔥 Not spaceBetween or start

                    onChanged: viewModel.onOtpChanged,
                  ),
                ),

                verticalSpaceMedium,

                // 🔥 Resend code text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "If you didn't receive a code? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: viewModel.resendOtp,
                      child: const Text(
                        "Resend",
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                verticalSpaceLarge,

                // 🔥 Continue Button
                SizedBox(
                  width: double.infinity,
                  child: AppButton(
                    text: 'Continue',
                    isBusy: viewModel.isBusy,
                    onPressed: viewModel.verifyOtp,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  OtpViewModel viewModelBuilder(BuildContext context) => OtpViewModel();
}
