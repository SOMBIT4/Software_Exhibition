import 'package:breezybangladesh/core/app_export.dart';
import 'package:flutter/material.dart';

class AndroidLargeOneScreen extends StatelessWidget {
  const AndroidLargeOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgAndroidLarge,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 41.v,
            ),
           // child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 45.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 296.h,
                      margin: EdgeInsets.only(
                        left: 2.h,
                        right: 34.h,
                      ),
                      child: Text(
                        "BREEZY BANGLADESH",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.displayMediumBlack90001,
                      ),
                    ),
                  ),
                  Spacer(
                    flex: 61,
                  ),
                  SizedBox(
                    width: 330.h,
                    child: Text(
                      "Explore Your Favorite Journey",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.displayMedium,
                    ),
                  ),
                  Text(
                    "Let’s make our life so a life",
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleLargeSemiBold_1,
                  ),
                  Spacer(
                    flex: 38,
                  ),
                  SizedBox(
                    height: 56.v,
                    width: 152.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 56.v,
                          width: 91.h,
                          alignment: Alignment.centerLeft,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.h,
                              vertical: 10.v,
                            ),
                            decoration:
                                AppDecoration.gradientBlueGrayToBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder27,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 2.v),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, '/android_large_two_screen');
                                    },
                                    child: Text(
                                      "swipe",
                                      style: CustomTextStyles.headlineSmall24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
           // ),
          ),
        ),
      ),
    );
  }
}
