import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:korean_language_learning_app/presentation/learn/learn_menu_page.dart';
import 'package:korean_language_learning_app/presentation/practice/practice_menu_page.dart';
import 'package:korean_language_learning_app/presentation/use_cases/use_cases_menu.dart';
import 'package:korean_language_learning_app/util/application_util.dart';
import 'package:korean_language_learning_app/util/constant.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double menuFontSize = 14;
  double englishFontSize = 20;
  double _buttonOpacity = 0;
  bool isExtended = false;
  late BannerAd myBanner;
  late BannerAdListener listener;
  late AdWidget adWidget;

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      _buttonOpacity = 1;
      setState(() {});
    });
    if (!kIsWeb) {
      initBannerAds();
    }

    super.initState();
  }

  @override
  void dispose() {
    myBanner.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _getBackgroundImage(),
          _getButtons(),
          _getBottomSheetButton(),
          _topBannerAds(),
        ],
      ),
      //floatingActionButton: _getHomeFab(),
    );
  }

  _getButtons() => Positioned(
        bottom: 90,
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _getLearnButtons(),
              const SizedBox(
                height: 20,
              ),
              _getPracticeButtons(),
              const SizedBox(
                height: 20,
              ),
              _useCasesButtons(),
            ],
          ),
        ),
      );

  _getLearnButtons() => InkWell(
        onTap: () {
          Navigator.pushNamed(context, LearnMenuPage.routeName);
        },
        child: AnimatedOpacity(
          duration: Duration(milliseconds: ApplicationUtil.ANIMATION_DURATION),
          opacity: _buttonOpacity,
          child: Container(
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: ApplicationUtil.getBoxDecorationOne(context),
            child: Column(
              children: [
                Text(
                  'Learn Korean',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: englishFontSize, color: Colors.white),
                ),
                Text(
                  '한국어를 배우다',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: menuFontSize, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );

  _getPracticeButtons() => InkWell(
        onTap: () {
          Navigator.pushNamed(context, PracticeMenuPage.routeName);
        },
        child: AnimatedOpacity(
          duration:
              const Duration(milliseconds: ApplicationUtil.ANIMATION_DURATION),
          opacity: _buttonOpacity,
          child: Container(
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: ApplicationUtil.getBoxDecorationOne(context),
            child: Column(
              children: [
                Text(
                  'Write Korean',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: englishFontSize, color: Colors.white),
                ),
                Text(
                  '한글 쓰기',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: menuFontSize, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );

  _getBackgroundImage() => Hero(
        tag: 'image',
        child: Container(
          child: Image.asset(
            'assets/images/tree.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.centerLeft,
          ),
        ),
      );

  _getBottomSheetButton() => Positioned(
        bottom: 10,
        child: GestureDetector(
            onPanUpdate: (details) {
              if (details.delta.dy < 0) {
                ApplicationUtil.showAboutUs(context);
              }
            },
            onTap: () {
              ApplicationUtil.showAboutUs(context);
            },
            child: RotatedBox(
              quarterTurns: -1,
              child: Icon(
                Icons.arrow_forward_ios_outlined,
                size: 40,
                color: Theme.of(context).primaryColorLight,
              ),
            )),
      );

  _topBannerAds() => Positioned(
        top: MediaQuery.of(context).padding.top + 70,
        child: !kIsWeb
            ? Container(
                alignment: Alignment.center,
                child: adWidget,
                width: myBanner.size.width.toDouble(),
                height: myBanner.size.height.toDouble(),
              )
            : Container(),
      );

  _useCasesButtons() => InkWell(
        onTap: () {
          Navigator.pushNamed(context, UseCaseMenuPage.routeName);
        },
        child: AnimatedOpacity(
          duration: Duration(milliseconds: ApplicationUtil.ANIMATION_DURATION),
          opacity: _buttonOpacity,
          child: Container(
            width: 250,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            decoration: ApplicationUtil.getBoxDecorationOne(context),
            child: Column(
              children: [
                Text(
                  'Speak Korean',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: englishFontSize, color: Colors.white),
                ),
                Text(
                  '한국어 말하기',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: menuFontSize, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      );

  void initBannerAds() {
    listener = BannerAdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (Ad ad) => print('Ad loaded.'),
      // Called when an ad request failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        // Dispose the ad here to free resources.
        ad.dispose();
        print('Ad failed to load: $error');
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) => print('Ad opened.'),
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) => print('Ad closed.'),
      // Called when an impression occurs on the ad.
      onAdImpression: (Ad ad) => print('Ad impression.'),
    );
    myBanner = BannerAd(
      adUnitId: AppConstant.BANNER_AD_HOME_UNIT_ID,
      size: AdSize.banner,
      request: AdRequest(),
      listener: listener,
    );
    if (!kIsWeb) {
      adWidget = AdWidget(ad: myBanner);
      myBanner.load();
    }
  }
}
