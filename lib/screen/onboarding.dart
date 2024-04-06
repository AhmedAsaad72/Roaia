import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';
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


  @override
  Widget build(BuildContext context) {
    List<Boarding> boarding=
    [
      Boarding(
        image:"assets/images/image1.png" ,
        title:tr("gps_monitoring", context),
        body:tr("gps_monitoring_info", context),
      ),
      Boarding(image:"assets/images/image2.png" ,
        title:tr("sos_noti", context),
        body:tr("sos_noti_info", context),
      ),
      Boarding(image:"assets/images/image3.png" ,
        title:tr("addcontact", context),
        body: tr("addcontact_info", context),
      ),
    ];
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 25.0),
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
                      ),
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
                        duration: Duration(seconds: 1),
                        curve:Curves.bounceInOut);
                  }
                  },
                child: Text(tr("next", context),style: TextStyle(
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