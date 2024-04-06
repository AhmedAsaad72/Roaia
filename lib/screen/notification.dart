import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';
import 'package:roaia/screen/notification2.dart';

class Notification_Screen extends StatefulWidget {
  const Notification_Screen({super.key});

  @override
  State<Notification_Screen> createState() => _Notification_ScreenState();
}

class _Notification_ScreenState extends State<Notification_Screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width*.35,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0xffE5E5E5),
                      spreadRadius: 15,
                      blurRadius: 10,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    tr("notification", context),style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Color(0xff5095FF)
                  ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height:160*3,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 120,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: const Color(0xffEEFFD966),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: const Color(0xff2323230A))
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.notification_important,color: Colors.red,),
                          const SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*.70,
                            child: const Text("New Connection Added: You've beenpaired with a new user. Make a positiveimpact on their journey!",style: TextStyle(
                                fontWeight: FontWeight.w700,fontSize: 16
                            ),),
                          ),
                        ],
                      ),
                    );
                },

              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width*.90,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xff2C67FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder:(context) => const Notification2_Screen(), ));
                },
                child:Text(tr("delete_all", context),style: const TextStyle(
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
