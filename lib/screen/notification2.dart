import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';

class Notification2_Screen extends StatelessWidget {
  const Notification2_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back_ios_new),),
        title: Text(
          tr("notification", context),style: const TextStyle(
          color: Color(0xff1363DF),
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xffC3DAFF),
              child: Icon(Icons.notifications_none_outlined,size: 30,),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
             tr("no_notification", context),style: const TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 25,
              color: Color(0xff040508)
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              tr("will_get_updates", context),style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xff17191C)
            ),
            ),
          ],
        ),
      ),
    );
  }
}
