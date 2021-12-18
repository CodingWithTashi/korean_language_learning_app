import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:korean_language_learning_app/presentation/learn/alphabet/alphabet_list_page.dart';
import 'package:korean_language_learning_app/presentation/practice/practice_list_page.dart';
import 'package:korean_language_learning_app/servie_locater.dart';
import 'package:korean_language_learning_app/util/application_util.dart';
import 'package:korean_language_learning_app/util/constant.dart';

class PracticeMenuPage extends StatefulWidget {
  static const routeName = "/practice-menu-page";
  const PracticeMenuPage({Key? key}) : super(key: key);

  @override
  _PracticeMenuPageState createState() => _PracticeMenuPageState();
}

class _PracticeMenuPageState extends State<PracticeMenuPage> {
  late BannerAd myBanner;
  late BannerAdListener listener;
  late AdWidget adWidget;
  @override
  void initState() {
    if (!kIsWeb) {
      listener = BannerAdListener(
        onAdLoaded: (Ad ad) => print('Ad loaded.'),
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
          print('Ad failed to load: $error');
        },
        onAdOpened: (Ad ad) => print('Ad opened.'),
        onAdClosed: (Ad ad) => print('Ad closed.'),
        onAdImpression: (Ad ad) => print('Ad impression.'),
      );
      myBanner = BannerAd(
        adUnitId: AppConstant.TEST_UNIT_ID,
        size: AdSize.banner,
        request: AdRequest(),
        listener: listener,
      );
      adWidget = AdWidget(ad: myBanner);
      myBanner.load();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
              constraints: const BoxConstraints(maxWidth: 500),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        getIt<AlphabetType>().type =
                            AlphabetCategoryType.ALPHABET;

                        Navigator.pushNamed(
                            context, PracticeListPage.routeName);
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration:
                            ApplicationUtil.getBoxDecorationOne(context),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '19 Consonant',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'There are 19 consonant',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () => _navigateToAlphabetDetailPage(
                          AlphabetCategoryType.VOWEL),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        decoration:
                            ApplicationUtil.getBoxDecorationOne(context),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '21 Vowel',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 34,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'There are 21 consonant',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            _getBannerAds()
          ],
        ),
      ),
      floatingActionButton: ApplicationUtil.getFloatingActionButton(context),
    );
  }

  _getBannerAds() => !kIsWeb
      ? Positioned.fill(
          bottom: 80,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              alignment: Alignment.center,
              child: adWidget,
              width: myBanner.size.width.toDouble(),
              height: myBanner.size.height.toDouble(),
            ),
          ),
        )
      : Container();

  _navigateToAlphabetDetailPage(AlphabetCategoryType type) {
    getIt<AlphabetType>().type = type;

    Navigator.pushNamed(context, PracticeListPage.routeName);
  }
}
