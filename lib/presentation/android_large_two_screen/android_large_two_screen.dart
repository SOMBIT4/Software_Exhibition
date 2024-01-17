import 'package:breezybangladesh/core/app_export.dart';
import 'package:breezybangladesh/widgets/app_bar/appbar_leading_image.dart';
import 'package:breezybangladesh/widgets/app_bar/custom_app_bar.dart';
import 'package:breezybangladesh/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AndroidLargeTwoScreen extends StatelessWidget {
  const AndroidLargeTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        body: SizedBox(
          height: 800.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage2,
                height: 1000.v,
                width: 500.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 40.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildAppBar(context),
                      SizedBox(height: 17.v),
                      _buildRowNine(context),
                      SizedBox(height: 47.v),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "HELLO,WELCOME!",
                          textAlign: TextAlign.center,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 9.v),
                      Container(
                        width: 325.h,
                        margin: EdgeInsets.only(
                          left: 11.h,
                          right: 23.h,
                        ),
                        child: Text(
                          "Welcome to Breezy Bangladesh to explore Bangladesh",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        onPressed: (){
                          Navigator.pushNamed(context, '/android_large_three_screen');
                        },
                        text: "SIGN IN",
                        margin: EdgeInsets.only(
                          left: 18.h,
                          right: 43.h,
                        ),
                      ),
                      SizedBox(height: 48.v),
                      CustomElevatedButton(
                        text: "SIGN UP",
                        margin: EdgeInsets.only(
                          left: 19.h,
                          right: 43.h,
                        ),
                        buttonTextStyle:
                            CustomTextStyles.headlineSmallOnSecondaryContainer,
                      ),
                      SizedBox(height: 11.v),
                      Container(
                        width: 123.h,
                        margin: EdgeInsets.only(left: 106.h),
                        child: Text(
                          "or\nvia Social Media",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 7.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgDeviconGoogle,
                        height: 36.v,
                        width: 43.h,
                        margin: EdgeInsets.only(left: 146.h),
                      ),
                      SizedBox(height: 93.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow1,
        margin: EdgeInsets.only(
          left: 19.h,
          right: 317.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRowNine(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          left: 7.h,
          right: 13.h,
        ),
        child: Row(
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
              margin: EdgeInsets.only(left: 29.h),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillBlueGray,
              child: CustomImageView(
                imagePath: ImageConstant.imgMegaphone,
                height: 27.v,
                width: 20.h,
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
