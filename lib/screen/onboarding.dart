import 'package:flutter/material.dart';
import 'package:roaia/screen/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class Boarding
{
  final String image;
  final String title;
  final String body;

  Boarding({required this.image,required this.title,required this.body});
}

class Onborading_Screen extends StatelessWidget {
  // Onborading_Screen({super.key});


  var controller =PageController();

  List<Boarding> boarding=
  [
    Boarding(
      image:"assets/images/image1.png" ,
      title:"GPS Monitoring",
      body: "   Gps monitoring to know where the\n blind is by the place where the roaia \n                      glasses in .",
    ),
    Boarding(image:"assets/images/image2.png" ,
      title:"SOS Notification",
      body: "We provide SOS notification if he fall in trouble \n there is a notification sent directly to app and\n the glasses take photo then sent them to app \n then escort can go to target place without any\n                     problem or obstacle. ",
    ),
    Boarding(image:"assets/images/image3.png" ,
      title:"Add Contact",
      body: "Add contact feature which make glasses know \n                           people front of it.",
    ),
  ];

  Onborading_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Container(
              height: 680,
              child: PageView.builder(
                  controller: controller,
                  physics: BouncingScrollPhysics(),
                  itemCount: boarding.length,
                  itemBuilder: (context,  index){
                    return   Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 170,
                        ),
                        Image.asset(
                            "${boarding[index].image}"),
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          "${boarding[index].title} ",style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xff5095FF)
                        ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${boarding[index].body}",style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,color: Color(0xffA8A29E),
                        ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    );
                  }),
            ),
            SmoothPageIndicator(
              controller: controller,
              effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 5,
                  activeDotColor: Colors.blueAccent
              ),
              count: boarding.length,
            ),
            SizedBox(
              height: 32,
            ),
            Container(
              width: 300,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff2C67FF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder:(context) => Login_Screen(), ));
                },
                child: Text(   "Next",style: TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}