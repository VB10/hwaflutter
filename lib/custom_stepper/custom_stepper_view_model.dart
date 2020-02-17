import 'package:flutter/material.dart';
import './custom_stepper.dart';

abstract class CustomStepperViewModel extends State<CustomStepper> {
  // Add your state and logic here
  int stepLenght = 3;

  List<Step> stepList() {
    List<Step> steps = [];
    for (var i = 0; i < stepLenght; i++) {
      steps.add(Step(
          content: Text("hello$i"),
          title: Text("Heeelo"),
          isActive: currentStep == i,
          state: currentStep == i ? StepState.complete : StepState.editing));
    }
    return steps;
  }

  int currentStep = 0;

  void onStepChange(int index) {
    setState(() {
      currentStep = index;
    });
  }
}
