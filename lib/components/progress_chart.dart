import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

class MonthlySpendingBar extends StatelessWidget {
  final double limit;
  final double spent;

  const MonthlySpendingBar({
    super.key,
    required this.limit,
    required this.spent,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    final progress = (spent / limit).clamp(0.0, 1.0);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            // Background bar
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: AppColors.grey,
                borderRadius: BorderRadius.circular(8),
              ),
            ),

            FractionallySizedBox(
              widthFactor: progress,
              child: Container(
                height: 10,
                decoration: BoxDecoration(
                  color: isDarkMode ? AppColors.offWhite : AppColors.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            // Positioned(
            //   left: (progress * MediaQuery.of(context).size.width * 0.9)
            //       .clamp(0.0, MediaQuery.of(context).size.width * 0.9 - 10),
            //   child: Container(
            //     width: 16,
            //     height: 16,
            //     decoration: BoxDecoration(
            //       color: Colors.red,
            //       shape: BoxShape.circle,
            //       border: Border.all(color: Colors.white, width: 2),
            //     ),
            //   ),
            // ),
          ],
        ),

        const SizedBox(height: 10),

        // Range labels
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$0',
                style: TextStyle(
                  color: isDarkMode ? AppColors.offWhite : AppColors.black,
                )),
            Text(
              '\$${limit.toStringAsFixed(0)}',
              style: TextStyle(
                color: isDarkMode ? AppColors.offWhite : AppColors.black,
              ),
            ),
            Text('\$${limit.toStringAsFixed(0)}',
                style: TextStyle(
                  color: isDarkMode ? AppColors.offWhite : AppColors.black,
                )),
          ],
        ),
      ],
    );
  }
}
