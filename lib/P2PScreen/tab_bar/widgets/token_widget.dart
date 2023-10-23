import 'package:flutter/material.dart';

import '../../setting/constants.dart';

class TokenWidget extends StatelessWidget {
  const TokenWidget({super.key, this.token});
  final String? token;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.greyColor10, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Expanded(
              child: Material(
                child: ListTile(
                  tileColor: AppColor.primaryColor0,
                  title: Text(
                    token ?? "MSQ",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: AppColor.greyColor80,
                    ),
                  ),
                  subtitle: const Text(
                    "(UPbit 기준가)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: AppColor.greyColor60),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    "1,000,000 ${token ?? 'MSQ'}",
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: AppColor.greyColor80,
                    ),
                  ),
                  const Text(
                    "3,000,000,000원",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: AppColor.greyColor80,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
