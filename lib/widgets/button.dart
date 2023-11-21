
import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color textColor;
  const MyButton({
    super.key,
    required this.text,
    this.textColor = Colors.white
  });
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context,listen: false).setValue(text),
      child: Material(
        elevation: 3,
        color: AppColors.secondary2Color,
        shape: const CircleBorder(),
        child: CircleAvatar(
          backgroundColor: AppColors.secondary2Color,
          radius: screenWidth * 0.085,
          child:  Text(
            text,
            style: TextStyle(
              color: textColor,
                fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
