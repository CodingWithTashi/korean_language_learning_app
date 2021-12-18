import 'package:flutter/material.dart';
import 'package:korean_language_learning_app/model/verb.dart';
import 'package:korean_language_learning_app/presentation/widget/alphabet_audio_control.dart';
import 'package:korean_language_learning_app/util/application_util.dart';
import 'package:korean_language_learning_app/util/constant.dart';

class VerbDetailPage extends StatefulWidget {
  final Verb verb;
  VerbDetailPage({required this.verb});

  static const routeName = "/verbs-detail";
  @override
  _VerbDetailPageState createState() => _VerbDetailPageState();
}

class _VerbDetailPageState extends State<VerbDetailPage> {
  var controller;
  var selectedPageIndex = 0;
  var pageView;
  List<Verb> verbsList = AppConstant.verbsList;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    selectedPageIndex = verbsList.indexOf(widget.verb);
    controller = PageController(
      initialPage: selectedPageIndex,
    );

    initPageView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Center(
            child: SingleChildScrollView(
              /*physics:
                  BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),*/
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 500,
                    child: pageView,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  AlphabetAudioControl(
                    pathName: 'assets/audio/words/',
                    fileName: verbsList[selectedPageIndex].fileName,
                    koreanPronoun: verbsList[selectedPageIndex].wordInKorean,
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
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: verbsList.length,
      controller: controller,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Hero(
          tag: verbsList[index].wordInKorean,
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
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding: const EdgeInsets.symmetric(vertical: 40),
                        decoration:
                            ApplicationUtil.getBoxDecorationOne(context),
                        child: Image.asset(
                          ApplicationUtil.getImagePath(
                              verbsList[index].fileName),
                          height: 200,
                          width: 200,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 30, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              size: 40,
                              color: Theme.of(context)
                                  .primaryColorLight
                                  .withAlpha(80),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 40,
                              color: Theme.of(context)
                                  .primaryColorLight
                                  .withAlpha(80),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    decoration: ApplicationUtil.getBoxDecorationOne(context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          verbsList[index].wordInKorean,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 50, color: Colors.white),
                        ),
                        Text(
                          verbsList[index].wordInEnglish,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontSize: 20, color: Colors.white),
                        ),
                      ],
                    ),
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
