import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper/screen/home/provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {

    homeProviderfalse = Provider.of<HomeProvider>(context,listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context,listen: true);

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Stepper App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stepper(steps: [
              Step(
                  title: Text("Personal Details"),
                  content: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              border: OutlineInputBorder())),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              border: OutlineInputBorder())),
                    ],
                  )),
              Step(
                  title: Text("Personal Details"),
                  content: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              border: OutlineInputBorder())),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              border: OutlineInputBorder())),
                    ],
                  )),
              Step(
                  title: Text("Personal Details"),
                  content: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              border: OutlineInputBorder())),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              border: OutlineInputBorder())),
                    ],
                  )),
              Step(
                  title: Text("Personal Details"),
                  content: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              border: OutlineInputBorder())),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              border: OutlineInputBorder())),
                    ],
                  )),
              Step(
                  title: Text("Personal Details"),
                  content: Column(
                    children: [
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Enter Your Name',
                              border: OutlineInputBorder())),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: 'Mobile Number',
                              border: OutlineInputBorder())),
                    ],
                  )),
            ],
            
            onStepCancel: (){
              if(homeProviderfalse!.i>0)
                {
                  homeProvidertrue!.minus();
                }
            },
            currentStep: homeProvidertrue!.i,
              onStepContinue: (){
              if(homeProviderfalse!.i<5)
                {
                  homeProvidertrue!.plus();
                }
              },
            ),
          ],
        ),
      ),
    ));
  }
}
