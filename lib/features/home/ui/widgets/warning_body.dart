import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/home/logic/warning_cubit/warning_cubit.dart';
import 'package:spark_flutter_app/features/home/ui/widgets/warning_card_list.dart';

class WarningBody extends StatelessWidget {
  const WarningBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WarningCubit, WarningState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: CircularProgressIndicator()),
          loading: () => const Center(child: CircularProgressIndicator()),
          success: (warnings) {
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
                        WarningCardList(items: warnings, riskType: 'all'),
                        WarningCardList(
                          items:
                              warnings
                                  .where(
                                    (w) => w.severity?.toLowerCase() == 'high',
                                  )
                                  .toList(),
                          riskType: 'high',
                        ),
                        WarningCardList(
                          items:
                              warnings
                                  .where(
                                    (w) =>
                                        w.severity?.toLowerCase() == 'medium',
                                  )
                                  .toList(),
                          riskType: 'medium',
                        ),
                        WarningCardList(
                          items:
                              warnings
                                  .where(
                                    (w) => w.severity?.toLowerCase() == 'low',
                                  )
                                  .toList(),
                          riskType: 'low',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
          error:
              (error) => Center(
                child: Text(
                  'Error: ${error.message}',
                  style: Styles.font18BlackSemiBold,
                ),
              ),
        );
      },
    );
  }
}
