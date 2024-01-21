import 'package:breezybangladesh/core/app_export.dart';
import 'package:breezybangladesh/widgets/custom_elevated_button.dart';
import 'package:breezybangladesh/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNehaMaheenMah,
                height: 806.v,
                width: 360.h,
                alignment: Alignment.bottomCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 38.h,
                    vertical: 28.v,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(.5),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 174.h,
                            margin: EdgeInsets.only(left: 18.h),
                            child: Text(
                              "BREEZY\nBANGLADESH",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineSmall,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: 221.h,
                          margin: EdgeInsets.only(
                            left: 27.h,
                            right: 34.h,
                          ),
                          child: Text(
                            "Create Account Now!",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles
                                .headlineLargeSecondaryContainer,
                          ),
                        ),
                        SizedBox(height: 25.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Text(
                              "Full Name",
                              style:
                                  CustomTextStyles.titleLargeOnPrimaryContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildFullName(context),
                        SizedBox(height: 22.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "Email",
                              style:
                                  CustomTextStyles.titleLargeOnPrimaryContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 17.v),
                        _buildEmail(context),
                        SizedBox(height: 23.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 17.h),
                            child: Text(
                              "Password",
                              style:
                                  CustomTextStyles.titleLargeOnPrimaryContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 9.v),
                        _buildPassword(context),
                        SizedBox(height: 27.v),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 18.h),
                            child: Text(
                              "Phone no.",
                              style:
                                  CustomTextStyles.titleLargeOnPrimaryContainer,
                            ),
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildPhoneNumber(context),
                        SizedBox(height: 43.v),
                        _buildSignUp(context),
                        SizedBox(height: 19.v),
                      ],
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBack34x56,
                height: 34.v,
                width: 56.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 31.v),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameController,
      hintText: "full name",
    );
  }

  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "Phone number",
      textInputAction: TextInputAction.next,
      textInputType: TextInputType.phone,
    );
  }

  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/homepage_screen');
      },
      height: 41.v,
      text: "Sign up",
      buttonStyle: CustomButtonStyles.fillGrayC,
      buttonTextStyle: CustomTextStyles.headlineSmallGray900,
    );
  }
}
