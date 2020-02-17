import 'package:flutter/material.dart';
import '../views/json_placeholder_view.dart';
import './custom_stepper_view_model.dart';

class CustomStepperView extends CustomStepperViewModel {
  @override
  Widget build(BuildContext context) {
    // Replace this with your build function
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              type: StepperType.horizontal,
              steps: stepList(),
              currentStep: currentStep,
              onStepTapped: onStepChange,
            ),
          ),
          Expanded(child: JsonPlaceHolderView())
        ],
      ),
    );
  }
}
