import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:korean_language_learning_app/model/alphabet.dart';
import 'package:korean_language_learning_app/presentation/learn/alphabet/alphabet_detail_page.dart';
import 'package:korean_language_learning_app/servie_locater.dart';
import 'package:korean_language_learning_app/util/application_util.dart';
import 'package:korean_language_learning_app/util/constant.dart';

class AlphabetListPage extends StatefulWidget {
  static const routeName = "/alphabet-list-page";
  const AlphabetListPage({
    Key? key,
  }) : super(key: key);

  @override
  _AlphabetListPageState createState() => _AlphabetListPageState();
}

class _AlphabetListPageState extends State<AlphabetListPage> {
  late List<Alphabet> alphabetList;
  @override
  void initState() {
    alphabetList = AppConstant.getAlphabetList(getIt<AlphabetType>().type);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
        children: [_getBackgroundImage(), _getAnimatedAlphabetListWidget()],
      ),
      floatingActionButton: ApplicationUtil.getFloatingActionButton(context),
    );
  }

  _getBackgroundImage() => Hero(
        tag: 'image',
        child: Container(
          child: Image.asset(
            'assets/images/tree.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.centerRight,
          ),
        ),
      );

  _getAnimatedAlphabetListWidget() => Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: AnimationLimiter(
            child: Padding(
              padding: const EdgeInsets.only(right: 40, left: 50, top: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(
                      milliseconds: ApplicationUtil.ANIMATION_DURATION),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: _getAlphabetList(),
                ),
              ),
            ),
          ),
        ),
      );
  _getAlphabetList() {
    List<Widget> widgetList = [];
    for (var alphabet in alphabetList) {
      widgetList.add(Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, AlphabetDetailPage.routeName,
                  arguments: alphabet);
            },
            child: Hero(
              tag: alphabet.alphabetName,
              flightShuttleBuilder: ApplicationUtil.flightShuttleBuilder,
              child: Container(
                width: 250,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                decoration: ApplicationUtil.getBoxDecorationOne(context),
                child: Column(
                  children: [
                    Text(
                      alphabet.alphabetName,
                      style: const TextStyle(fontSize: 60, color: Colors.white),
                    ),
                    Text(
                      alphabet.englishPronoun,
                      style: const TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ));
    }
    return widgetList;
  }
}
