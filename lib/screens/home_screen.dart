
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_app/screens/health_assessment_screen.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var progress = 1;



 PageController controller = PageController();
  void updateProgress(double value){
    setState(() {
      progress = value.toInt();
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text("Hello Jane",
                  style: TextStyle(
                      color: Colors.blueAccent[700],
                      fontSize: 33,
                      fontWeight: FontWeight.bold)),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.grey.shade700, width: 2)),
                child: IconButton(
                  style: ButtonStyle(
                      fixedSize: WidgetStatePropertyAll(Size(20, 15)),
                      backgroundColor:
                          WidgetStatePropertyAll(Colors.grey.shade700)),
                  icon: Icon(Icons.person, color: Colors.white),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            DefaultTabController(
                length: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.grey[200],
                        ),
                        child: TabBar(
                          labelColor: Colors.blueAccent[700],
                          unselectedLabelColor: Colors.grey,
                          dividerColor: Colors.transparent,
                          indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(17),
                              ),
                              boxShadow: [
                                BoxShadow(color: Colors.white)
                              ],
                              shape: BoxShape.rectangle,
                              ),
                          indicatorPadding: EdgeInsets.all(6),
                          indicatorWeight: 10,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [
                            Tab(text: 'My Assessments'),
                            Tab(text: 'My Appointments'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      child: TabBarView(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    AssessmentCard(
                                      title: 'Fitness Assessment',
                                      image: AssetImage(
                                          'assess/images/image 193.png'),
                                      colors: [
                                        Colors.yellow.shade50,
                                        Colors.orange.shade200
                                      ],
                                      description:
                                          'Get started on your fitness goals with our physical assessment and vital scan',
                                      OnTap: () {  },
                                    ),
                                    AssessmentCard(
                                        title: 'Health Risk Assessment',
                                        image: AssetImage(
                                            'assess/images/image 56.png'),
                                        colors: [
                                          Colors.greenAccent,
                                          Colors.teal.shade100
                                        ],
                                        description:
                                            'Identify and mitigate health risks with precise, proactive assessments',
                                        OnTap: () {
                                           Navigator.push(context, MaterialPageRoute(builder:(context) =>HealthAssessmentScreen() ,));

                                        }),
                                    ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor: WidgetStatePropertyAll(
                                              Colors.blue.shade900),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          'View all',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.grey.shade200),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: GridView.count(
                                      crossAxisCount: 2,
                                      childAspectRatio: 1.5,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      shrinkWrap: true,
                                      children: [
                                        AppointmentCard(
                                            title: 'Cancer 2nd \n Opinion',
                                            image:
                                                'assess/images/Group 1171274978 (2).png',
                                            color: Colors.blue.shade100),
                                        AppointmentCard(
                                            title: 'Physiotherapy Appointment',
                                            image:
                                                'assess/images/Group 1171274978.png',
                                            color: Colors.purple.shade100),
                                        AppointmentCard(
                                            title: 'Fitness \n Appointment',
                                            image:
                                                'assess/images/Group 1171274978 (1).png',
                                            color: Colors.orange.shade100)
                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.blue.shade900),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'View all',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text('Challenges',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  Spacer(),
                  Text('View All',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  IconButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStatePropertyAll(Colors.blue.shade900),
                          shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)))),
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width-4,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                  color: Colors.greenAccent.shade100,),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text('Today’s Challenge!',
                            style: TextStyle(color: Colors.green.shade900,fontSize: 18),),
                          Container(
                            width: 120,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.green.shade900,
                              borderRadius: BorderRadius.circular(15)),
                          child: Text('Push Up 20x',
                            style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),),
                          // LinearProgressIndicator(
                          //   value: 0.5, // 50% progress
                          //   backgroundColor: Colors.grey[300],
                          //   color: Colors.pink[300],
                          //   minHeight: 10,
                          // ),
                          Text('10/20 Complete'),
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                              fixedSize: WidgetStatePropertyAll(Size(150, 20))),
                              onPressed: () {},
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                      child: Icon(Icons.play_arrow,color: Colors.white,),
                                    backgroundColor: Colors.blue.shade900,
                                  maxRadius: 15,
                                  ),
                                  SizedBox(width: 10,),
                                  Text('Continue',style: TextStyle(color: Colors.blue.shade900),)
                                ],
                              )
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Image.asset('assess/images/image 53.png',width: 180,fit: BoxFit.fitWidth,),
                  ],
                ),
                ),
                Row(
                  children: [
                    Text('Workout Routines',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Spacer(),
                    Text('View All',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    IconButton(
                        style: ButtonStyle(
                            backgroundColor:
                            WidgetStatePropertyAll(Colors.blue.shade900),
                            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)))),
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )),
                  ],
                ),
               SingleChildScrollView(
                 scrollDirection: Axis.horizontal,
                 child: Row(
                   children: [
                          routinesContainer(
                              title: 'Sweat Starter',
                              method: 'Full Body',
                              type:'Lose Weight' ,
                              difficulty: 'Medium ',
                              image:Image.asset('assess/images/sd 1 (1).png')
                          ),
                          routinesContainer(
                              title: 'Sweat Starter',
                              method: 'Full Body',
                              type:'Lose Weight' ,
                              difficulty: 'Medium ',
                              image:Image.asset('assess/images/image 54.png')
                          ),
                        ],
                    ),
               ),
                 ],
               ),
              ],
            ),
          ),
    );
  }

  Widget routinesContainer({
    required String title,
    required String method ,
    required String type ,
    required String difficulty,
  required Image image
  }) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.orange[100],
                            borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15))
                          ),
                         
                          child: image
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        children: [
                          Text(title,
                            style: TextStyle(color: Colors.black,
                                fontSize: 18,fontWeight:FontWeight.bold ),),
                          Text(method,style: TextStyle(color: Colors.black45)),
                          Container(
                            width: 120,
                            height: 25,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.black26)),
                            child: Text(type,style:TextStyle(color: Colors.blue.shade900),textAlign: TextAlign.center,),
                          ),
                          Row(
                            children: [
                              Text('Difficulty :',style: TextStyle(color: Colors.black45),),
                              Text(difficulty,style: TextStyle(color: Colors.pink.shade300),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
  );

  Widget AppointmentCard(
          {required String title, required image, required Color color}) =>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () {},
          child: Container(
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(image, height: 50),
                SizedBox(height: 10),
                Text(title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      );
}

Widget AssessmentCard({
  required String title,
  required String description,
  required ImageProvider image,
  required List<Color> colors,
  required VoidCallback OnTap
}) =>
    Padding(
      padding: EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap:OnTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: colors),
                    image: DecorationImage(
                        image: image,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.contain,
                        alignment: Alignment.center),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Container(
                    width: 200,
                    child: Text(description),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Start',
                          style: TextStyle(
                              color: Colors.blue.shade900, fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
