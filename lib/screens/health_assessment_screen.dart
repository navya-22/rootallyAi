import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HealthAssessmentScreen extends StatefulWidget {
  const HealthAssessmentScreen({super.key});

  @override
  State<HealthAssessmentScreen> createState() => _HealthAssessmentScreenState();
}

class _HealthAssessmentScreenState extends State<HealthAssessmentScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.green.shade100, Colors.green.shade200])),
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(13),
                    child: Column(children: [
                      SizedBox(
                        height: 50,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back)),
                      ),
                      // SizedBox(height: 20,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' Health Risk \n Assessment',
                                style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade900),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.timer_outlined,
                                      color: Colors.blue.shade900,
                                    ),
                                    Text(
                                      ' 4 min ',
                                      style: TextStyle(
                                          color: Colors.blue.shade900),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage('assess/images/image 56.png'),
                            width: 170,
                          )
                        ],
                      ),
                    ])),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30))),
                    child: Padding(
                      padding: EdgeInsets.all(13),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'What do you get ?',
                              style: TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                doContainer(
                                    text: 'Key Body\nVitals',
                                    screenWidth: screenWidth,
                                    image: 'assess/images/fi_245305.png'),
                                doContainer(
                                    text: 'Posture\nAnalysis',
                                    screenWidth: screenWidth,
                                    image: 'assess/images/fi_5718253.png'),
                                doContainer(
                                    text: 'Body\nComposition',
                                    screenWidth: screenWidth,
                                    image: 'assess/images/fi_3663902.png'),
                                doContainer(
                                    text: 'Instant\nReports',
                                    screenWidth: screenWidth,
                                    image: 'assess/images/fi_2570993.png'),
                              ],
                            ),
                  
                            Container(
                              height: screenHeight * 0.4,
                              width: MediaQuery.of(context).size.width,
                              child: Stack(
                                clipBehavior: Clip.none,
                                children:[
                                  Text('How we do it?',
                                      style: TextStyle(
                                          color: Colors.indigo.shade900,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(width: 25,),
                                  Positioned(
                                    right: 30,
                                    top: -40,
                                    child: Image.asset(
                                      'assess/images/Group 1171275252 (1).png',
                                      height: 180,
                                      width: 180,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: Container(
                                      height: screenHeight*0.35,
                                      width: MediaQuery.of(context).size.width-4,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 15,
                                    right: 8,
                                    child: Image.asset(
                                      'assess/images/Untitled-1 3.png',
                                      width: screenWidth * 0.8,
                                      height: screenHeight * 0.2,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 40,
                                    right: 48,
                                    child: Image.asset(
                                      'assess/images/Group 1171275254.png',
                                      width: screenWidth * 0.7,
                                      height: screenHeight * 0.12,
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 51,
                                    right: 40,
                                    child: Image.asset(
                                      'assess/images/Vector 999.png',
                                      width: screenWidth * 0.7,
                                      height: screenHeight * 0.12,
                                      filterQuality: FilterQuality.high,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 180,
                                    child: Container(
                                      padding: EdgeInsets.all(screenWidth * 0.03),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(

                                            decoration: BoxDecoration(
                                              color: Colors.green.withOpacity(0.1),
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            width: screenWidth *4,
                                            height: screenHeight*0.032,
                                            child: Row(
                                              children: [
                                                Image(image: AssetImage('assess/images/ic_outline-security.png'),
                                                  filterQuality: FilterQuality.high,
                                                height: 20,
                                                width: 30,
                                                fit: BoxFit.contain,),
                                                Text(
                                                  "We do not store or share your personal data",
                                                  style: TextStyle(
                                                    fontSize: screenWidth * 0.04,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: screenHeight * 0.01),
                                          Text(
                                            "1. Ensure that you are in a well-lit space\n"
                                                "2. Allow camera access and place your device \n  against a stable object or wall\n"
                                                "3. Avoid wearing baggy clothes\n"
                                                "4. Make sure you exercise as per the instruction \n provided by the trainer",
                                            style: TextStyle(
                                              fontSize: screenWidth * 0.04,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: screenHeight * 0.03),
                  
                  
                                                  ]
                              ),
                            ),
                  
                          ]),
                    ),
                  ),
                )
              ],
            )));
  }

  Widget doContainer(
          {required String text,
          required double screenWidth,
          required String image}) =>
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(35)),
              child: Image.asset(
                image,
                width: screenWidth * 0.15,
                height: screenWidth * 0.15,
              ),
            ),
            SizedBox(height: screenWidth * 0.02),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.03,
              ),
            ),
          ],
        ),
      );
}
