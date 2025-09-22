import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:spark_flutter_app/core/helpers/assets.dart';
import 'package:spark_flutter_app/core/theming/color_manager.dart';
import 'package:spark_flutter_app/core/theming/styles.dart';
import 'package:spark_flutter_app/features/main/logic/main_navigation_cubit.dart';

class RemindersAppbar extends StatefulWidget {
  const RemindersAppbar({
    super.key,
    required this.selectedMonth,
    required this.onMonthChanged,
    required this.selectedDate,
    required this.onDateSelected,
  });
  final int selectedMonth;
  final DateTime selectedDate;
  final ValueChanged<int> onMonthChanged;
  final ValueChanged<DateTime> onDateSelected;

  @override
  State<RemindersAppbar> createState() => _RemindersAppbarState();
}

class _RemindersAppbarState extends State<RemindersAppbar> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();

    // Auto-scroll to today
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final todayIndex = widget.selectedDate.day - 1;
      final itemWidth = 60.w + 12.w; // item width + margin
      final offset =
          todayIndex * itemWidth -
          (MediaQuery.of(context).size.width / 2) +
          (itemWidth / 2); // ~width of each item
      _scrollController.jumpTo(offset);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  List<String> get _months =>
      List.generate(12, (i) => DateFormat.MMMM().format(DateTime(0, i + 1)));

  @override
  Widget build(BuildContext context) {
    final daysInMonth = DateUtils.getDaysInMonth(
      widget.selectedDate.year,
      widget.selectedMonth,
    );
    return Container(
      height: 180.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorManager.primaryBlue,
        image: DecorationImage(
          image: AssetImage(Assets.appbarBackground),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            ColorManager.primaryBlue.withAlpha(200),
            BlendMode.darken,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () => context.read<MainNavigationCubit>().changeTab(0),
                  child: Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.25),
                Text(
                  'Reminders',
                  style: Styles.font24WhiteMedium.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                DropdownButton<int>(
                  value: widget.selectedMonth,
                  underline: const SizedBox(),
                  alignment: AlignmentGeometry.centerRight,
                  dropdownColor: ColorManager.primaryBlue,
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white,
                  ),
                  items: List.generate(
                    12,
                    (i) => DropdownMenuItem(
                      value: i + 1,
                      alignment: AlignmentGeometry.centerRight,
                      child: Text(
                        _months[i],
                        style: Styles.font14BlackRegular.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    if (value != null) widget.onMonthChanged(value);
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 75.h,
            child: ListView.builder(
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              itemCount: daysInMonth,
              itemBuilder: (context, index) {
                final day = DateTime(
                  widget.selectedDate.year,
                  widget.selectedMonth,
                  index + 1,
                );
                final isSelected =
                    widget.selectedDate.day == day.day &&
                    widget.selectedDate.month == day.month;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.onDateSelected(day);
                      // 🔥 Call your cubit here
                      // context.read<ReminderCubit>().getRemindersFor(day);
                    });
                  },
                  child: Container(
                    width: 60.w,
                    margin: EdgeInsets.symmetric(horizontal: 6.w),
                    decoration: BoxDecoration(
                      color:
                          isSelected ? ColorManager.primaryBlue : Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          day.day.toString(),
                          style: Styles.font20WhiteSemiBold.copyWith(
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                        ),
                        SizedBox(height: 6.h),
                        Text(
                          DateFormat('EEE').format(day), // Mon, Tue
                          style: Styles.font12WhiteRegular.copyWith(
                            color: isSelected ? Colors.white : Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
