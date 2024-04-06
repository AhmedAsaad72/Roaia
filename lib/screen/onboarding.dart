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

class Onborading_Screen extends StatefulWidget {

  Onborading_Screen({super.key});

  @override
  State<Onborading_Screen> createState() => _Onborading_ScreenState();
}

class _Onborading_ScreenState extends State<Onborading_Screen> {
  // Onborading_Screen({super.key});
  var controller =PageController();

  bool isLast = false;

  List<Boarding> boarding=
  [
    Boarding(
      image:"assets/images/image1.png" ,
      title:"GPS Monitoring",
      body: "   Gps monitoring to know where the\n blind is by the place where the roaia \n                      glasses in .",
    ),
    Boarding(image:"assets/images/image2.png" ,
      title:"SOS Notification",
      body: "We provide SOS notification if he fall in trouble  there is a notification sent  directly to app and the glasses take photo then sent them to app  then escort can  go to target place without any  problem or obstacle. ",
    ),
    Boarding(image:"assets/images/image3.png" ,
      title:"Add Contact",
      body: "Add contact feature which make glasses know people front of it.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*.80,
              child: PageView.builder(
                onPageChanged: (index){
                  if(index == boarding.length - 1){
                   setState(() {
                     isLast = true ;
                   });
                  }else{
                    setState(() {
                      isLast = false ;
                    });
                  }
                },
                  controller: controller,
                  physics: BouncingScrollPhysics(),
                  itemCount: boarding.length,
                  itemBuilder: (context,  index){
                    return   SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                           height: MediaQuery.of(context).size.height*.2,
                          ),
                          Image.asset(
                              "${boarding[index].image}"),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "${boarding[index].title} ",style:const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              color: Color(0xff5095FF)
                          ),
                          ),
                          const  SizedBox(
                            height: 15,
                          ),
                          Text(
                            "${boarding[index].body}",style:const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,color: Color(0xffA8A29E),
                          ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SmoothPageIndicator(
              controller: controller,
              effect:const ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 5,
                  activeDotColor: Colors.blueAccent
              ),
              count: boarding.length,
            ),
            const  SizedBox(
              height: 32,
            ),
            Container(
              width: MediaQuery.of(context).size.width*.75,
              height: 44,
              decoration: BoxDecoration(
                color: Color(0xff2C67FF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: TextButton(
                onPressed: (){
                  if(isLast){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder:(context) => Login_Screen(), ));
                  }else{
                    controller.nextPage(
                        duration:const Duration(seconds: 1),
                        curve:Curves.bounceInOut);
                  }
                  },
                child:const Text( "Next",style: TextStyle(
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