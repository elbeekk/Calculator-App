import 'package:calculator_app/constants/colors.dart';
import 'package:calculator_app/provider/cal_provider.dart';
import 'package:calculator_app/screens/data.dart';
import 'package:calculator_app/widgets/cal_button.dart';
import 'package:calculator_app/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    EdgeInsets padding =
    const EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    return Consumer<CalculatorProvider>(
      builder: (context,provider,_) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Calculator App'),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              CustomTextField(controller: provider.compController,),
              const Spacer(),
              Container(
                padding: padding,
                height: screenHeight * .6,
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) => listOfButtons[index],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) => listOfButtons[index + 4],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) => listOfButtons[index + 8],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3,
                                  (index) => listOfButtons[index + 12],
                                ),
                              ),
                              const SizedBox(height: 14,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3,
                                  (index) => listOfButtons[index + 15],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenWidth*0.06,),
                        const CalButton()
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }
}
