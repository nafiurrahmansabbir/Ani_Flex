
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../controller/countdown_controller.dart';
import '../utils/app_colors.dart';
import '../widgets/app_logo_svg.dart';
import '../widgets/themeSnackBar.dart';
import 'home_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _otpTEController = TextEditingController();
  final CountdownController controller = Get.put(CountdownController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(26.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 120),
                  AppLogoSvg(logoWidth: 120),
                  Text(
                    'Enter OTP Code',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    'A 4 Digit OTP Code has been Sent',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 10),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      selectedColor: Colors.green,
                      selectedFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      inactiveColor: AppColors.themeColor,
                    ),
                    enableActiveFill: true,
                    controller: _otpTEController,
                    appContext: context,
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //active
                        Get.offAll(() => HomeScreen());
                      }
                    },
                    child: Text('Next'),
                  ),
                  const SizedBox(height: 10),
                  Obx(
                    () => RichText(
                      text: TextSpan(
                          text: 'This code will expire in ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(color: Colors.grey),
                          children: [
                            TextSpan(
                              text: '${controller.second.value}s',
                              style: TextStyle(color: AppColors.themeColor),
                            ),
                          ]),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        themeSnackBar('Resending Code',
                            'A 6 digit number sent on your e-mail');
                        controller.resetCountDown();
                      },
                      child: Text('Resend Code'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
