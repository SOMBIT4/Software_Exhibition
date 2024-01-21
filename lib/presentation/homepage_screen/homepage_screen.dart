import 'package:breezybangladesh/core/app_export.dart';
import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 756.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRashaduzzamanH,
                height: 748.v,
                width: 360.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 756.v,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 24.v,
                  ),
                  decoration: AppDecoration.fillErrorContainer1,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                          height: 572.v,
                          width: 319.h,
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle11,
                                height: 572.v,
                                width: 319.h,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 53.h,
                                    top: 15.v,
                                    right: 13.h,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 146.h,
                                            child: Text(
                                              "BREEZY BANGLADESH",
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              style: CustomTextStyles
                                                  .titleLargeNeutonOnPrimaryContainer,
                                            ),
                                          ),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgContacts,
                                            height: 31.v,
                                            width: 44.h,
                                            margin: EdgeInsets.only(
                                              left: 62.h,
                                              top: 2.v,
                                              bottom: 9.v,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 100.v),
                                      Padding(
                                        padding: EdgeInsets.only(left: 7.h),
                                        child: Text(
                                          "BOOK & TRAVEL",
                                          style: CustomTextStyles
                                              .displayMediumRozhaOnePrimaryContainer,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildArrowRightRow(context),
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle8,
                        height: 173.v,
                        width: 177.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(
                          right: 49.h,
                          bottom: 8.v,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgBack34x58,
                        height: 34.v,
                        width: 58.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 18.v),
                      ),
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
  Widget _buildArrowRightRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.fromLTRB(5.h, 474.v, 4.h, 73.v),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 9.v,
        ),
        // decoration: AppDecoration.fillOnPrimary.copyWith(
        //   borderRadius: BorderRadiusStyle.roundedBorder20,
        // ),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.5),
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 18.v),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text(
                        "Popular destinations",
                        style: CustomTextStyles
                            .titleLargeOnPrimaryContainerExtraLight,
                      ),
                    ),
                    SizedBox(height: 25.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgLinkedin,
                      height: 26.v,
                      width: 20.h,
                      margin: EdgeInsets.only(left: 16.h),
                    ),
                    // SizedBox(height: 2.v),
                    SizedBox(
                      width: 58.h,
                      child: Text(
                        " Kaptai Lake",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles
                            .titleLargeInriaSansOnPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 27.v,
              width: 20.h,
              margin: EdgeInsets.only(
                left: 56.h,
                top: 72.v,
                bottom: 43.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
