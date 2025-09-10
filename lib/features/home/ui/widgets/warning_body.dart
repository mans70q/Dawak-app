import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_card_list.dart';

class WarningBody extends StatelessWidget {
  const WarningBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'title': 'Warfarin + Aspirin',
        'subtitle': 'Blood Thinning Interaction',
        'risk': 'High',
      },
      {'title': 'Drug B', 'subtitle': 'Side effects', 'risk': 'Medium'},
      {'title': 'Drug C', 'subtitle': 'Safe usage', 'risk': 'Low'},
      {'title': 'Drug A', 'subtitle': 'Important notes', 'risk': 'High'},
      {'title': 'Drug B', 'subtitle': 'Side effects', 'risk': 'Medium'},
      {'title': 'Drug C', 'subtitle': 'Safe usage', 'risk': 'Low'},
      {'title': 'Drug A', 'subtitle': 'Important notes', 'risk': 'High'},
      {'title': 'Drug B', 'subtitle': 'Side effects', 'risk': 'Medium'},
      {'title': 'Drug C', 'subtitle': 'Safe usage', 'risk': 'Low'},
    ];
    return DefaultTabController(
      length: 4,
      child: Column(
        children: <Widget>[
          ButtonsTabBar(
            backgroundColor: ColorManager.primaryBlue,
            unselectedBackgroundColor: ColorManager.lightBlue,
            borderColor: Colors.black,
            labelStyle: Styles.font12WhiteRegular,
            unselectedLabelStyle: Styles.font12WhiteRegular.copyWith(
              color: Colors.black,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 17.w,
              vertical: 5.h,
            ),
            labelSpacing: 8.w,
            radius: 10.r,
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'High Risk'),
              Tab(text: 'Medium Risk'),
              Tab(text: 'Low Risk'),
            ],
          ),
          SizedBox(
            height: 530.h,
            child: TabBarView(
              children: <Widget>[
                WarningCardList(items: items, riskType: 'all'),
                WarningCardList(items: items, riskType: 'high'),
                WarningCardList(items: items, riskType: 'medium'),
                WarningCardList(items: [], riskType: 'low'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
