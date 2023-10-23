import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'constants.dart';

enum BottomNavOption {
  home, msqTrading, superSave, main
}

const bottomOptionsData = {
  BottomNavOption.home: {
    "label": "홈",
    "icon": "assets/images/home_btm_icon.svg",
    "path": ""
  },
  BottomNavOption.msqTrading: {
    "label": "MSQ 거래",
    "icon": "assets/images/msq_trading_btm_icon.svg",
    "path": ""
  },
  BottomNavOption.superSave: {
    "label": "Super Save",
    "icon": "assets/images/ss_btm_icon.svg",
    "path": "/"
  },
  BottomNavOption.main: {
    "label": "전체",
    "icon": "assets/images/main_btm_icon.svg",
    "path": ""
  }
};

class AppBottomNav extends StatelessWidget {
  final BottomNavOption current;

  const AppBottomNav({super.key, required this.current});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: bottomOptionsData.keys.toList().indexOf(current),
      onTap: (i) {
        final key = bottomOptionsData.keys.elementAt(i);
        if(key == current) {
          return;
        }
        Navigator.of(context).pushReplacementNamed(
          bottomOptionsData[key]!["path"]!
        );
      },
      elevation: 8,
      showUnselectedLabels: true,
      unselectedItemColor: AppColor.greyColor80,
      selectedItemColor: AppColor.primaryColor70,
      items: [
        for(final ent in bottomOptionsData.entries)
          BottomNavigationBarItem(
              label: ent.value["label"],
              icon: Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: SvgPicture.asset(
                  ent.value["icon"]!,
                  colorFilter: ColorFilter.mode(
                      ent.key == current ?
                      AppColor.primaryColor70 :
                      AppColor.greyColor80,
                      BlendMode.srcIn
                  ),
                ),
              ),
          )
      ],
    );
  }

}