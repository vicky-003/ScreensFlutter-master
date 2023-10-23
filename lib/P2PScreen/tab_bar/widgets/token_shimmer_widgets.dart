import 'package:flutter/material.dart';

import '../../setting/constants.dart';

class TokenShimmer extends StatelessWidget {
  const TokenShimmer({
    Key? key,
  }): super(key: key);
  //Container(color: Colors.grey,width: 60,

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
                  title: Container(color: Colors.grey,width: 50,
                    child: const Text(
                       "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: AppColor.greyColor80,
                      ),
                    ),
                  ),
                  subtitle: Container(color: Colors.grey,width: 80,
                    child: const Text(
                      "",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: AppColor.greyColor60),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(color: Colors.grey,width: 80,
                    child: const Text(
                      "",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: AppColor.greyColor80,
                      ),
                    ),
                  ),
                  Container(color: Colors.grey,width: 80,
                    child: const Text(
                      "",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        height: 1.5,
                        color: AppColor.greyColor80,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
