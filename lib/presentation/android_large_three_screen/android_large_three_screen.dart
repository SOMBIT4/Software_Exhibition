import 'package:breezybangladesh/core/app_export.dart';
import 'package:breezybangladesh/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class AndroidLargeThreeScreen extends StatelessWidget {
  AndroidLargeThreeScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidLarge756x360,
              ),
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 52.v,
              ),
              child: ListView(
                children: [
                  _buildTwelveRow(context),
                  SizedBox(height: 5.v),
                  Text(
                    "WELCOME BACK!",
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "Login to Continue...",
                    style: CustomTextStyles.titleLargeRegular,
                  ),
                  SizedBox(height: 85.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "USERNAME",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeSemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      right: 19.h,
                    ),
                    child: CustomTextFormField(
                      controller: userNameController,
                      hintText: "username",
                    ),
                  ),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "PASSWORD",
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeGray100,
                      ),
                    ),
                  ),
                  SizedBox(height: 6.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 18.h,
                      right: 19.h,
                    ),
                    child: CustomTextFormField(
                      controller: passwordController,
                      hintText: "password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                      borderDecoration: TextFormFieldStyleHelper.fillYellowA,
                      fillColor: appTheme.yellow200A5,
                    ),
                  ),
                  Spacer(),
                  SizedBox(height: 23.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 13.h),
                      child: Text(
                        "Forget Password?",
                        style: CustomTextStyles.titleLargeMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTwelveRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 16.v,
            bottom: 7.v,
          ),
          child: Text(
            "BREEZY BANGLADESH",
            style: theme.textTheme.headlineSmall,
          ),
        ),
        Container(
          height: 55.v,
          width: 31.h,
          margin: EdgeInsets.only(left: 22.h),
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 13.v,
          ),
          decoration: AppDecoration.fillSecondaryContainer,
          child: CustomImageView(
            imagePath: ImageConstant.imgMegaphoneBlack90002,
            height: 27.v,
            width: 20.h,
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
