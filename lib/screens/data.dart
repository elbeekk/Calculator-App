import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/widgets/button.dart';
import 'package:flutter/material.dart';

List<Widget> listOfButtons = const[
  MyButton(text: 'C',textColor: AppColors.secondaryColor,),
  MyButton(text: '/',textColor: AppColors.secondaryColor,),
  MyButton(text: 'X',textColor: AppColors.secondaryColor,),
  MyButton(text: 'AC',textColor: AppColors.secondaryColor,),
  MyButton(text: '7'),
  MyButton(text: '8'),
  MyButton(text: '9'),
  MyButton(text: '-',textColor: AppColors.secondaryColor,),
  MyButton(text: '4'),
  MyButton(text: '5'),
  MyButton(text: '6'),
  MyButton(text: '+',textColor: AppColors.secondaryColor,),
  MyButton(text: '1'),
  MyButton(text: '2'),
  MyButton(text: '3'),
  MyButton(text: '%'),
  MyButton(text: '0'),
  MyButton(text: '.'),
];