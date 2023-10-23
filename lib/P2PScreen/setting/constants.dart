import 'package:flutter/material.dart';

class AppColor {
  //Primary Color
  static const Color primaryColor = Color(0xff174FDF);
  static const Color primaryColor0 = Color(0xffF5F8FF);
  static const Color primaryColor30 = Color(0xffC1D2FE);
  static const Color primaryColor70 = Color(0xff2960ec);
  static const Color primaryColorLight = Color(0xff2A60EB);

  //Grey Color
  static const Color greyColor10 = Color(0xffE3E5EC);
  static const Color greyColor0 = Color(0xffF6F7F9);
  static const Color greyColor30 = Color(0xffBBBFCC);
  static const Color greyColor60 = Color(0xff6b6f80);
  static const Color greyColor80 = Color(0xff3e414c);

  static const superSaveGradientSecondColor = Color(0xff5320C9);
  static const Color primaryColor40 = Color(0xff8FAEFC);
  static const Color primaryColorNew = Color(0xff0081CC);
  static const Color greyColor20 = Color(0xffDCDEE6);
  static const Color greyColor50 = Color(0xff838799);
  static const Color greyColor90 = Color(0xff292B33);
  static const Color greyColor100 = Color(0xff141519);
  static const Color placeholderColor = Color(0xffffffff);
  static const Color greyColor70 = Color(0xff545766);
  static const Color greyColor40 = Color(0xff9EA2B3);
  static const Color dangerColor0 = Color(0xffFFE6E6);
  static const Color dangerColor10 = Color(0xffE62E2E);
  static const Color dangerColor20 = Color(0xffCC0000);
  static const Color flowKitRed = Color(0xffFC5555);
  static const Color primaryColor60 = Color(0xff4375F4);
  static const Color successColor0 = Color(0xffE6FFF3);
  static const Color successColor30 = Color(0xff18B368);
  static const Color successColor50 = Color(0xff008042);
  static const Color primaryColor10 = Color(0xffE8EEFF);
  static const Color primaryColor20 = Color(0xffDBE5FE);
  static const Color primaryColor100 = Color(0xff0335B4);
  static const Color helperColor = Color(0xffc16ef1);
  static const Color changeLogAnnouncementColor = Color(0xff838799);
  static const Color connectedPlatformGray1 = Color(0xff2E3646);
  static const Color connectedPlatformGray2 = Color(0xff667080);

  static const Color trustWallet = Color(0xff3375BB);
  static const Color metamask = Color(0xfff6851b);
  static const Color upColor = Color(0xff58A225);
  static const Color lightGreen = Color(0xff75E58B);
  static const Color downColor = Colors.red;
  static const Color primaryColorDark = Color(0xff306334);
  static const Color dividerColor = Color(0xff71717D);
  static const Color dividerColorP2U = Color(0xffD9D9D9);
  static const Color hintColor = Color(0xff717D7D);

  static const Color blue10 = Color(0xff0071B3);
  static const Color blue = Color(0xff0081CC);
  static const Color infoBlue0 = Color(0xffE6F6FF);
  static const Color infoBlue20 = Color(0xff0081CC);
  static const Color dailyParticipationShadowColor = Color(0xffBFCCD9);

  static const Color tertiaryColor70 = Color(0xff22A8C6);

  static const Color blueLight =  Color(0xffE6F6FF);

  static const Color yellow =  Color(0xffDB8400);
}

class CustomBorder {
  static OutlineInputBorder border({double? radius, Color? color}) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius ?? 8),
        borderSide: BorderSide(color: color ?? AppColor.greyColor10),
      );
}
