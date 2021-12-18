import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_language_learning_app/util/application_util.dart';

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
      body: Column(
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
                      const BorderRadius.only(bottomLeft: Radius.circular(40)),
                  color: Theme.of(context).primaryColor,
                ),
                child: Center(
                  child: _getBasicKoreanUI(),
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
                decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(50)),
                  color: Colors.white,
                ),
                child: Center(
                  child: _getAdvanceKoreanUI(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _getAdvanceKoreanUI() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Advance Module',
              style: TextStyle(height: 1.2, color: Colors.black, fontSize: 30),
            ),
            const Text(
              '\"Includes sentences, speech and conversation\"',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 250,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: ApplicationUtil.getBoxDecorationTwo(context),
                child: const Text(
                  'Explore Advance',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      );

  _getBasicKoreanUI() => Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Basic Module',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            const Text(
              '\"Learn basic of korean such as alphabet, words etc\"',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, HomePage.routeName);
              },
              child: Container(
                width: 250,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                decoration: ApplicationUtil.getBoxDecorationOne(context),
                child: const Text(
                  'Explore Basic',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      );
}
