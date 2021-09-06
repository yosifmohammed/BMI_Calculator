import 'dart:math';
import 'package:BMICalculator/modules/BMI/BMI_Result_Screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Color colorOfContainerMale = Color.fromARGB(50, 127, 0, 255);
  Color colorOfTextMale = Color.fromARGB(100, 158, 158, 158);
  Color colorOfContainerFemale = Color.fromARGB(50, 127, 0, 255);
  Color colorOfTextFemale = Color.fromARGB(100, 158, 158, 158);
  int weightCount = 60;
  int ageCount = 30;
  double sliderCount = 120;
  String gender = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.grey, fontSize: 20),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                child: Row(
            children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                            colorOfContainerMale = Colors.green;
                            colorOfTextMale = Colors.black;
                            colorOfContainerFemale = Color.fromARGB(50, 127, 0, 255);
                            colorOfTextFemale = Color.fromARGB(100, 158, 158, 158);
                            gender = 'Male';
                          });
                      },

                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: colorOfContainerMale,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image(image: AssetImage('assets/images/male.png'),
                              width: 120,
                              height: 120
                            ),
                              Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('MALE', style: TextStyle(color: colorOfTextMale, fontSize: 28, fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        colorOfContainerFemale = Colors.green;
                        colorOfTextFemale = Colors.black;
                        colorOfContainerMale = Color.fromARGB(50, 127, 0, 255);
                        colorOfTextMale = Color.fromARGB(100, 158, 158, 158);
                        gender = 'Female';
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: colorOfContainerFemale,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/female.png'),
                              width: 120,
                              height: 120
                         ),                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('FEMALE', style: TextStyle(color: colorOfTextFemale, fontSize: 28, fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
              )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(50, 127, 0, 255),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('HEIGHT', style: TextStyle(color: Colors.white, fontSize: 40,),textAlign: TextAlign.center,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${sliderCount.round()}',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold
                              ),),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'CM',
                              style: TextStyle(color: Colors.white, fontSize: 15
                              ),)
                          ],
                        ),
                      ),
                      Slider(
                        value: sliderCount,
                        max: 250.0,
                        min: 80.0,
                        onChanged: (value){
                          setState(() {
                            sliderCount = value;
                          });
                        },
                      )
                    ],
                  ),
                ),
              )
          ),
          Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromARGB(50, 127, 0, 255),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('WEIGHT',
                                style: TextStyle(
                                  color: Color.fromARGB(100, 158, 158, 158), fontSize: 23,
                                ),),
                              Text('$weightCount',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold
                                ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    child: Text('-', style: TextStyle(color: Colors.white, fontSize: 50),),
                                    backgroundColor: Color.fromARGB(40, 158, 158, 158),
                                      onPressed: (){
                                      setState(() {
                                        weightCount--;
                                      });
                                      },
                                  heroTag: 'weight-'
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  FloatingActionButton(
                                      child: Text('+', style: TextStyle(color: Colors.white, fontSize: 35),),
                                      backgroundColor: Color.fromARGB(40, 158, 158, 158),
                                      onPressed: (){
                                        setState(() {
                                          weightCount++;
                                        });
                                      },
                                      heroTag: 'weight+'
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromARGB(50, 127, 0, 255),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('AGE',
                                style: TextStyle(
                                  color: Color.fromARGB(100, 158, 158, 158), fontSize: 23,
                                ),),
                              Text('$ageCount',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold
                                ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      child: Text('-', style: TextStyle(color: Colors.white, fontSize: 50),),
                                      backgroundColor: Color.fromARGB(40, 158, 158, 158),
                                      onPressed: (){
                                        setState(() {
                                          ageCount--;
                                        });
                                      },
                                      heroTag: 'age-',
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  FloatingActionButton(
                                      child: Text('+', style: TextStyle(color: Colors.white, fontSize: 35),),
                                      backgroundColor: Color.fromARGB(40, 158, 158, 158),
                                      onPressed: (){
                                        setState(() {
                                          ageCount++;
                                        });
                                      },
                                    heroTag: 'age+',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.indigo,
              ),
              width: double.infinity,
              child: MaterialButton(onPressed: ()
              {
               double result = weightCount / pow(sliderCount/100, 2);
               print(result.round());

               Navigator.push(context,
                   MaterialPageRoute(
                   builder: (context) => BMI_Result(
                     gender: '$gender',
                     result: result.round(),
                     age: ageCount,
                     height: sliderCount.round(),
                     weight: weightCount,
                   ),
               ));
              },
                child: Text('CALCULATE', style: TextStyle(color: Colors.white, fontSize: 25),),
                  ),
            ),
          )
        ],
      ),
    );
  }
}