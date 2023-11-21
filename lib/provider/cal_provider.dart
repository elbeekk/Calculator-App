import 'package:flutter/cupertino.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier {
  final compController = TextEditingController();

  setValue(String value) {
    switch (value) {
      case "C":
        compController.clear();
        break;
      case "AC":
        compController.text =
            compController.text.characters.skipLast(1).toString();
        break;
      case "X":
        compController.text += '*';
        break;
      case "=":
        compute();
        break;
      default:
        compController.text += value;
    }
  }
  compute(){
    String text = compController.text;
    String result = text.interpret().toString();
    compController.text = result;
  }

  @override
  void dispose() {
    compController.dispose();
    super.dispose();
  }
}
