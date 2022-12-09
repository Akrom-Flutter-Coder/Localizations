import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
class Languagee extends StatefulWidget {
  const Languagee({super.key});

  @override
  State<Languagee> createState() => _LanguageeState();
}

class _LanguageeState extends State<Languagee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Translations and Localizations'),
      
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(child: Center(
              child: const Text('welcome',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),).tr(),
            )),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Container(
              height: 40,
              child:ElevatedButton (
                style:const ButtonStyle(
                ),
              child:const Text('English',
              style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () {
              context.locale=Locale('en','US');
            },)),
            Container(
              height: 40,
              child:ElevatedButton (
                style: const ButtonStyle(
                ),
              child:const Text('Russion',
              style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () {
               context.locale=Locale('ru','RU');
            },)),
            Container(
              height: 40,
              child:ElevatedButton (
                style:const ButtonStyle(
                ),
              child:const Text('Uzbek',
              style: TextStyle(
                color: Colors.white
              ),),
              onPressed: () {
               context.locale=Locale('uz','UZ');
            },))
            ],
           )
          ],
        ),
      )
    );
  }
}