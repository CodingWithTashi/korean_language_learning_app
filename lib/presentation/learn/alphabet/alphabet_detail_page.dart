import 'package:flutter/material.dart';
import 'package:korean_language_learning_app/model/alphabet.dart';
import 'package:korean_language_learning_app/presentation/widget/alphabet_audio_control.dart';
import 'package:korean_language_learning_app/servie_locater.dart';
import 'package:korean_language_learning_app/util/application_util.dart';
import 'package:korean_language_learning_app/util/constant.dart';

class AlphabetDetailPage extends StatefulWidget {
  final Alphabet alphabet;
  static const routeName = "/alphabet-detail-page";
  const AlphabetDetailPage({Key? key, required this.alphabet})
      : super(key: key);

  @override
  _AlphabetDetailPageState createState() => _AlphabetDetailPageState();
}

class _AlphabetDetailPageState extends State<AlphabetDetailPage> {
  var controller;
  var selectedPageIndex = 0;
  var pageView;
  List<Alphabet> alphabetList =
      AppConstant.getAlphabetList(getIt<AlphabetType>().type);

  @override
  void initState() {
    selectedPageIndex = alphabetList.indexOf(widget.alphabet);
    controller = PageController(
      initialPage: selectedPageIndex,
    );
    initPageView();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 500),
          child: Center(
            child: SingleChildScrollView(
              /*physics:
                  BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),*/
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 350,
                    child: pageView,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  alphabetList[selectedPageIndex].englishPronoun.isNotEmpty
                      ? AlphabetAudioControl(
                          pathName: 'assets/audio/',
                          fileName:
                              alphabetList[selectedPageIndex].englishPronoun,
                          koreanPronoun:
                              alphabetList[selectedPageIndex].alphabetName,
                        )
                      : Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            'No Audio Found, We will update and let you know',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                                fontSize: 20),
                          ),
                        )
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: ApplicationUtil.getFloatingActionButton(context),
    );
  }

  void initPageView() {
    pageView = PageView.builder(
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: alphabetList.length,
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Hero(
          tag: alphabetList[index].alphabetName,
          //center and scrollview is for hero animation
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 50),
                        padding: EdgeInsets.symmetric(vertical: 40),
                        decoration:
                            ApplicationUtil.getBoxDecorationOne(context),
                        child: Column(
                          children: [
                            Text(
                              alphabetList[index].alphabetName,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 120, color: Colors.white),
                            ),
                            Text(
                              alphabetList[index].englishPronoun,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontSize: 24, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 55, right: 44),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Icon(
                                Icons.arrow_back_ios,
                                size: 40,
                                color: Theme.of(context)
                                    .primaryColorLight
                                    .withAlpha(80),
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 40,
                                color: Theme.of(context)
                                    .primaryColorLight
                                    .withAlpha(80),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
      onPageChanged: (index) => setState(() => selectedPageIndex = index),
    );
  }
}
