import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CalButton extends StatelessWidget {
  const CalButton({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return  InkWell(
      onTap: () => Provider.of<CalculatorProvider>(context,listen: false).setValue('='),
      child: Container(
        height: screenWidth*0.17*2.2,
        width: screenWidth*0.17,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: AppColors.secondaryColor,),
        child: const Center(child: Text('=',style: TextStyle(fontSize: 32),),),
      ),
    );
  }
}
