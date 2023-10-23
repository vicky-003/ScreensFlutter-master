import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:test_ui/P2PScreen/tab_bar/widgets/custom_widget.dart';
import 'package:test_ui/P2PScreen/tab_bar/widgets/token_shimmer_widgets.dart';
import 'package:test_ui/P2PScreen/tab_bar/widgets/token_widget.dart';

import '../../models/load_status.dart';
import '../click_to_show_text/click_to_show_text_page.dart';
import '../setting/bottom_navigation.dart';
import '../setting/constants.dart';
import 'tab_bar_cubit.dart';
import 'tab_bar_navigator.dart';

class TabBarArguments {
  String param;

  TabBarArguments({
    required this.param,
  });
}

class TabBarPage extends StatelessWidget {
  const TabBarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return TabBarCubit(
          navigator: TabBarNavigator(context: context),
        );
      },
      child: const TabBarChildPage(),
    );
  }
}

class TabBarChildPage extends StatefulWidget {
  const TabBarChildPage({Key? key}) : super(key: key);

  @override
  State<TabBarChildPage> createState() => _TabBarChildPageState();
}

class _TabBarChildPageState extends State<TabBarChildPage> {
  late final TabBarCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = BlocProvider.of(context);
    _cubit.loadInitialData();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: AppColor.greyColor0,
          appBar: AppBar(
              title: const Text('Tab Bar',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                      fontSize: 18)),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notifications_none,
                    ))
              ],
              bottom: const TabBar(
                  isScrollable: false,
                  labelStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                  labelColor: Colors.black87,
                  unselectedLabelStyle: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  unselectedLabelColor: Colors.grey,
                  labelPadding: EdgeInsets.symmetric(vertical: 12),
                  indicatorColor: Colors.black87,
                  indicatorWeight: 1,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(width: 1),
                  ),
                  tabs: [
                    Text('Tab1'),
                    Text('Tab2'),
                    Text('Tab3'),
                  ])),
          body: _buildBodyWidget(),
          bottomNavigationBar:
              const AppBottomNav(current: BottomNavOption.superSave),
        ));
  }

  Widget _buildBodyWidget() {
    return TabBarView(children: [
      LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) =>
            BlocBuilder<TabBarCubit, TabBarState>(
                builder: (context, state) {
          return ListView(
            children: [
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    state.loadDataStatus == LoadStatus.loading
                        ? Shimmer.fromColors(
                            baseColor: Colors.black12,
                            highlightColor: Colors.white10,
                            child: const Column(
                              children: [
                                TokenShimmer(),
                              ],
                            ))
                        : const Text(
                            "법인 보유 자산",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: AppColor.greyColor80),
                          ),
                    const SizedBox(height: 8),
                    const TokenWidget(),
                    const TokenWidget(token: 'MSQX'),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(vertical: 12),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "신탁 및 Super Save 참여 현황",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: AppColor.greyColor80),
                    ),
                    CustomWidgetTab(
                        first: "한국토지신탁 신탁금액",
                        second: "10억원",
                        onTap: () {
                          _cubit.openTXscreen();
                        }),
                    CustomWidgetTab(
                        first: "Super Save 전체 참여 금액",
                        second: "7억 1110만원",
                        onTap: () {
                          _cubit.openTXscreen();
                        }),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      // onTap: ,
                      dense: true,
                      minLeadingWidth: 0,
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      title: Text(
                        "Super Save 이용 가이드",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          height: 1.5,
                          color: AppColor.greyColor80,
                        ),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: AppColor.greyColor80,
                      ),
                    ),
                    const SizedBox(height: 28),
                    MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      padding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 20),
                      elevation: 0,
                      color: AppColor.primaryColor70,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Super Save 신청",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "06:00:00",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.5,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
      const ClickToShowTextPage(),
    ]);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }
}
