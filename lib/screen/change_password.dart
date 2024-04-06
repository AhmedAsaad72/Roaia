import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';


class Change_Password extends StatelessWidget {
  const Change_Password({super.key});

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
          tr("change_password", context),style: const TextStyle(
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
                height: 10,
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
                tr("old_password", context),style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: tr("enter_old_password", context),
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
                tr("new_password", context),style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff40444C),
              ),),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    labelText: tr("enter_new_password", context),
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
                decoration: InputDecoration(
                    labelText: tr("re_epassword", context),
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
                    Navigator.pop(context);
                  },
                  child: Text(tr("change_password", context),style: const TextStyle(
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
