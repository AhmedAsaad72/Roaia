import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';

class About_App extends StatelessWidget {
  const About_App({super.key});

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
          tr("about_roaia", context),style: const TextStyle(
            color: Color(0xff1363DF),
            fontSize: 20,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*.04,
            ),
             Text.rich(
              TextSpan(
                text:tr("roaia_app", context),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
                children: [
                  TextSpan(style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,


                  ),
                    text: tr("roaia_app_info", context)


                  )
                ]
              )
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.04,
            ),
             Text.rich(
                TextSpan(
                    text: tr("roaia_glasses", context),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,

                    ),
                    children: [
                      TextSpan(style: const TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),
                        text: tr("roaia_glasses_info", context)


                      )
                    ]
                )
            )
          ],
        ),
      ),

    );
  }
}
