import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:korean_language_learning_app/l10n/l10n.dart';
import 'package:korean_language_learning_app/servie_locater.dart';
import 'package:korean_language_learning_app/util/application_util.dart';
import 'package:korean_language_learning_app/util/constant.dart';

import 'home.dart';

class LanguageTypePage extends StatefulWidget {
  static const routeName = "/language-select";

  const LanguageTypePage({Key? key}) : super(key: key);

  @override
  _LanguageTypePageState createState() => _LanguageTypePageState();
}

class _LanguageTypePageState extends State<LanguageTypePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  color: Colors.white,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(40)),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Center(
                    child: _getVochenUI(),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  color: Theme.of(context).primaryColor,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(50)),
                    color: Colors.white,
                  ),
                  child: Center(
                    child: _getVomeyUI(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _getVomeyUI() => Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Learn Vomey',
              style: TextStyle(height: 1.2, color: Colors.black, fontSize: 55),
            ),
            Text(
              'UMÊ SCRIPT',
              style: TextStyle(color: Colors.black),
            ),
            Text(
              '\"UME script is commonly taught for kids\"',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                speak();
              },
              child: Container(
                width: 250,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: ApplicationUtil.getBoxDecorationTwo(context),
                child: Text(
                  'Learn Umê',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      );

  _getVochenUI() => Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Lean Vovhen',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            Text(
              'UCHEN SCRIPT',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(
              '\"UCHEN script is commonly used in Prayer & Buddhist teaching\"',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, HomePage.routeName);
              },
              child: Container(
                width: 250,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: ApplicationUtil.getBoxDecorationOne(context),
                child: Text(
                  'Learn Uchen',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      );

  Future<void> speak() async {
    await getIt<FlutterTts>().setLanguage("ko-KR");
    await getIt<FlutterTts>().setPitch(1);
    await getIt<FlutterTts>().speak("감사합니다");
  }
}
