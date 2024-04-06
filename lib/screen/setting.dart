import 'package:flutter/material.dart';
import 'package:roaia/localization/localization_methods.dart';
import 'package:roaia/main.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}


class _SettingState extends State<Setting> {

  String? lang  ;


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
         tr("settings", context),style: const TextStyle(
            color: Color(0xff1363DF),
            fontSize: 20,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: RadioListTile(
                  title:Text(tr("english", context)),
                  value: "en",
                  groupValue: lang,
                  onChanged: (val){
                    setState(() {
                      lang = val ;
                      language.value = val ?? 'en';
                    });
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
              child: RadioListTile(
                  title:Text(tr("arabic", context)),
                  value: "ar",
                  groupValue: lang,
                  onChanged: (val){
                    setState(() {
                      lang = val ;
                      language.value = val ?? 'ar';

                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
