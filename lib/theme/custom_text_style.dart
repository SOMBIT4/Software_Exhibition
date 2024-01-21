import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Display text style
  static get displayMediumBlack90001 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 42.fSize,
        fontWeight: FontWeight.w800,
      );
  static get displayMediumRozhaOnePrimaryContainer =>
      theme.textTheme.displayMedium!.rozhaOne.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 46.fSize,
        fontWeight: FontWeight.w400,
      );
  // Headline text style
  static get headlineSmall24 => theme.textTheme.headlineSmall!.copyWith(
        fontSize: 24.fSize,
      );
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 24.fSize,
      );
  static get headlineSmallOnSecondaryContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onSecondaryContainer,
        fontSize: 24.fSize,
      );
  static get headlineLargeSecondaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w400,
      );
  // Title text style
  static get titleLargeGray100 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeInriaSansOnPrimaryContainer =>
      theme.textTheme.titleLarge!.inriaSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeNeutonOnPrimaryContainer =>
      theme.textTheme.titleLarge!.neuton.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSemiBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeOnPrimaryContainerExtraLight =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w200,
      );
}

extension on TextStyle {
  TextStyle get neuton {
    return copyWith(
      fontFamily: 'Neuton',
    );
  }

  TextStyle get rozhaOne {
    return copyWith(
      fontFamily: 'Rozha One',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
