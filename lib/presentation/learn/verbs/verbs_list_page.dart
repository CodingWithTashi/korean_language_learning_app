import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:korean_language_learning_app/model/verb.dart';
import 'package:korean_language_learning_app/presentation/learn/verbs/verb_detail_page.dart';
import 'package:korean_language_learning_app/util/application_util.dart';
import 'package:korean_language_learning_app/util/constant.dart';

class VerbListPage extends StatefulWidget {
  static const routeName = "/verbs-list";

  @override
  _VerbListPageState createState() => _VerbListPageState();
}

class _VerbListPageState extends State<VerbListPage> {
  List<Verb> verbsList = [];
  @override
  void initState() {
    verbsList = AppConstant.verbsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Hero(
            tag: 'image',
            child: Container(
              child: Image.asset(
                'assets/images/tree.jpg',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 500),
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).padding.top,
            ),
            child: AnimationLimiter(
              child: GridView.count(
                physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics(),
                ),
                crossAxisSpacing: 30,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(
                  verbsList.length,
                  (int index) {
                    return AnimationConfiguration.staggeredGrid(
                      position: index,
                      duration: const Duration(
                          milliseconds: ApplicationUtil.ANIMATION_DURATION),
                      columnCount: 2,
                      child: ScaleAnimation(
                        child: FadeInAnimation(
                          child: _getGridViewItem(verbsList[index]),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: ApplicationUtil.getFloatingActionButton(context),
    );
  }

  _getGridViewItem(Verb verb) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, VerbDetailPage.routeName, arguments: verb);
      },
      child: Hero(
        flightShuttleBuilder: ApplicationUtil.flightShuttleBuilder,
        tag: verb.wordInKorean,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: ApplicationUtil.getBoxDecorationOne(context),
          width: 60,
          height: 60,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ApplicationUtil.getImagePath(verb.fileName),
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  verb.wordInKorean,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                Text(
                  verb.wordInEnglish,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
