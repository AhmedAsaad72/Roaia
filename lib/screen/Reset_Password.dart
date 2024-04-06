import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';
import 'package:roaia/screen/login.dart';

class Reset_Password_Screen extends StatelessWidget {
  const Reset_Password_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: Text(
         tr("rest_password", context),style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Color(0xff1363DF)
        ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                  tr("create_strong", context),style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Color(0xffABA9AB)
              ),),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              tr("password", context),style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff40444C),
            ),),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration:InputDecoration(
                  labelText: tr("epassword", context),
                  suffixIcon: const Icon(Icons.visibility_outlined),
                  prefixIcon: const Icon(Icons.lock),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff96A0B6)
                  ),
                  border: const OutlineInputBorder( )
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Text(
             tr("confirm_password", context),style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff40444C),
            ),),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration:InputDecoration(
                  labelText: tr("re_epassword", context),
                  suffixIcon: const Icon(Icons.visibility_outlined),
                  prefixIcon: const Icon(Icons.lock),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Color(0xff96A0B6)
                  ),
                  border: const OutlineInputBorder( )
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
              width: MediaQuery.of(context).size.width*90,
              height: 44,
              decoration: BoxDecoration(
                color: const Color(0xff2C67FF),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder:(context) => const Login_Screen(), ));
                },
                child: Text(tr("rpassword", context),style: const TextStyle(
                    fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white
                ),),
              ),
            ),

          ],
        ),
      ),
      ),
    );
  }
}
