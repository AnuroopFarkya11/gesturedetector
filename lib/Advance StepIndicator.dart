import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class AdvanceStep extends StatefulWidget {
  const AdvanceStep({Key? key}) : super(key: key);

  @override
  State<AdvanceStep> createState() => _AdvanceStepState();
}

class _AdvanceStepState extends State<AdvanceStep> {
  int currentStep = 1;

  // List<Function> screenList = [(){},] 


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(

          children: [
            Text("STEP INDICATORS"),
            StepProgressIndicator(totalSteps: 4, currentStep: currentStep,),
            SizedBox(height: 50,),
            if(currentStep == 1)
              getScreen1()
            else
              if (currentStep == 2)
                getScreen2() else
                if (currentStep == 3)
                  getScreen3() else
                  if (currentStep == 4)
                    getScreen4(),

            SizedBox(height: 50,),
            ElevatedButton(onPressed: () {
              setState(() {

              });
              if(currentStep==4) {
                currentStep=0;
              }
              currentStep++;
              log(currentStep.toString());

            }, child: Text("Next")),


          ],


        )
    );
  }

  getScreen1() {

    return Container(
      height: 300,
      width: 300,
      color: Colors.amber,
      child: Center(child: Text("SCREEN 1")),


    );
  }

  getScreen2() {

    return Container(
      height: 300,
      width: 300,
      color: Colors.red,
      child: Center(child: Text("SCREEN 2")),

    );
  }

  getScreen3() {
    return Container(
      height: 300,
      width: 300,
      color: Colors.amber,
      child: Center(child: Text("SCREEN 3")),


    );
  }

  getScreen4() {

    return Container(
      height: 300,
      width: 300,
      color: Colors.amber,
      child: Center(child: Text("SCREEN 4")),


    );
  }


}
