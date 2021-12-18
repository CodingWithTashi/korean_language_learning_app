import 'package:flutter/material.dart';
import 'package:korean_language_learning_app/model/alphabet.dart';
import 'package:korean_language_learning_app/model/verb.dart';
import 'package:korean_language_learning_app/model/word.dart';

enum UseCaseType {
  PRONOUN,
  GREETING,
  COLORS,
  FAMILY,
  NUMBERS,
}
enum AlphabetCategoryType {
  ALPHABET,
  VOWEL,
  FIVE_PREFIX,
  TEN_SUFFIX,
  TWO_POSTFIX,
  RAGO,
  LAGO,
  SAGO,
  YATAK,
  RATAK,
  LATAK
}

class AlphabetType {
  AlphabetCategoryType type = AlphabetCategoryType.ALPHABET;
}

class AppConstant {
  static const String JOMAHALI_FAMILY = 'jomolhari';
  static const String TSUTUNG_FAMILY = 'tsutong';
  static const String CONTACT_US = 'Contact Us';
  static const String EMAIL = 'developer.kharag@gmail.com';
  static const String SUBJECT = 'Feedback & report';
  static const String BANNER_AD_HOME_UNIT_ID =
      'ca-app-pub-8284901143739274/2994092444';
  static const String BANNER_AD_LEARN_MENU_UNIT_ID =
      'ca-app-pub-8284901143739274/6651100571';
  static const String BANNER_AD_PRACTICE_MENU_UNIT_ID =
      'ca-app-pub-8284901143739274/9771506718';
  static const String TEST_UNIT_ID = 'ca-app-pub-3940256099942544/6300978111';
  static const String APP_ID = 'ca-app-pub-8284901143739274~1421990473';
  static const String SHARE_URL =
      'https://play.google.com/store/apps/details?id=com.kharagedition.korean_language_learning_app';
  static const String MORE_URL =
      'https://play.google.com/store/apps/dev?id=5910382695653514663';
  static const String CALENDER_URL =
      'http://www.digitaltibetan.org/cgi-bin/phugpa.pl';
  static const String APP_URL =
      'https://play.google.com/store/apps/details?id=com.kharagedition.korean_language_learning_app';
  static const String VIEW_ON_WEB = 'Open Web App';
  static const String WEB_URL = "https://koreanlanguagelearningapp.web.app/#/";

  static List<Verb> verbsList = [
    Verb(
        fileName: 'apple',
        wordInKorean: '사과',
        wordInEnglish: 'Apple',
        pronoun: 'sagwa'),
    Verb(
        fileName: 'phone',
        wordInKorean: '핸드폰',
        wordInEnglish: 'Phone',
        pronoun: 'haendeupon'),
    Verb(
        fileName: 'balloon',
        wordInKorean: '풍선',
        wordInEnglish: 'Balloon',
        pronoun: 'pungseon'),
    Verb(
        fileName: 'duck',
        wordInKorean: '오리',
        wordInEnglish: 'Duck',
        pronoun: 'oli'),
    Verb(
        fileName: 'chain',
        wordInKorean: '체인',
        wordInEnglish: 'Chain',
        pronoun: 'chein'),
    Verb(
        fileName: 'water',
        wordInKorean: '물',
        wordInEnglish: 'Water',
        pronoun: 'mul'),
    Verb(
        fileName: 'rainbow',
        wordInKorean: '무지개',
        wordInEnglish: 'Rainbow',
        pronoun: 'mujigae'),
    Verb(
        fileName: 'fish',
        wordInKorean: '물고기',
        wordInEnglish: 'Fish',
        pronoun: 'mulgogi'),
    Verb(
        fileName: 'horse',
        wordInKorean: '말',
        wordInEnglish: 'Horse',
        pronoun: 'mal'),
    Verb(
        fileName: 'rope',
        wordInKorean: '로프',
        wordInEnglish: 'Rope',
        pronoun: 'lopeu'),
    Verb(
        fileName: 'flag',
        wordInKorean: '깃발',
        wordInEnglish: 'Flag',
        pronoun: 'gisbal'),
    Verb(
        fileName: 'blackboard',
        wordInKorean: '칠판',
        wordInEnglish: 'Blackboard',
        pronoun: 'chilpa'),
    Verb(
        fileName: 'camera',
        wordInKorean: '카메라',
        wordInEnglish: 'Camera',
        pronoun: 'kamela'),
    Verb(
        fileName: 'pig',
        wordInKorean: '돼지',
        wordInEnglish: 'Pig',
        pronoun: 'dwaeji'),
    Verb(
        fileName: 'cow',
        wordInKorean: '소',
        wordInEnglish: 'Cow',
        pronoun: 'so'),
    Verb(
        fileName: 'fire',
        wordInKorean: '불',
        wordInEnglish: 'Fire',
        pronoun: 'bul'),
    Verb(
        fileName: 'grass',
        wordInKorean: '잔디',
        wordInEnglish: 'Grass',
        pronoun: 'jandi'),
    Verb(
        fileName: 'orange',
        wordInKorean: '오렌지',
        wordInEnglish: 'Orange',
        pronoun: 'olenji'),
    Verb(
        fileName: 'earth',
        wordInKorean: '지구',
        wordInEnglish: 'Earth',
        pronoun: 'jigu'),
    Verb(
        fileName: 'fox',
        wordInKorean: '여우',
        wordInEnglish: 'Fox',
        pronoun: 'yeou'),
    Verb(
        fileName: 'hat',
        wordInKorean: '모자',
        wordInEnglish: 'Hat',
        pronoun: 'moja'),
    Verb(
        fileName: 'copper',
        wordInKorean: '구리',
        wordInEnglish: 'Copper',
        pronoun: 'guli'),
    Verb(
        fileName: 'owl',
        wordInKorean: '올빼미',
        wordInEnglish: 'Owl',
        pronoun: 'olppaemi'),
    Verb(
        fileName: 'candle',
        wordInKorean: '양초',
        wordInEnglish: 'Candle',
        pronoun: 'yangcho'),
    Verb(
        fileName: 'goat',
        wordInKorean: '염소',
        wordInEnglish: 'Goat',
        pronoun: 'yeomso'),
    Verb(
        fileName: 'hand',
        wordInKorean: '손',
        wordInEnglish: 'Hand',
        pronoun: 'son'),
    Verb(
        fileName: 'meat',
        wordInKorean: '고기',
        wordInEnglish: 'Meat',
        pronoun: 'gogi'),
    Verb(
        fileName: 'map',
        wordInKorean: '지도',
        wordInEnglish: 'Map',
        pronoun: 'jido'),
    Verb(
        fileName: 'pot',
        wordInKorean: '냄비',
        wordInEnglish: 'Pot',
        pronoun: 'naembi'),
    Verb(
        fileName: 'mango',
        wordInKorean: '망고',
        wordInEnglish: 'Mango',
        pronoun: 'mang-go'),
  ];
  static getAudioByVerb(String verb) {
    return 'assets/audio/words/' + verb + ".mp3";
  }

  static List<Alphabet> getAlphabetList(AlphabetCategoryType type) {
    switch (type) {
      case AlphabetCategoryType.ALPHABET:
        {
          return _alphabetList();
        }
      case AlphabetCategoryType.VOWEL:
        {
          return _vowelList();
        }
      case AlphabetCategoryType.FIVE_PREFIX:
        {
          return _fivePrefixList();
        }
      case AlphabetCategoryType.TEN_SUFFIX:
        {
          return _tenSuffixList();
        }
      case AlphabetCategoryType.TWO_POSTFIX:
        {
          return _twoPostfixList();
        }
      case AlphabetCategoryType.RAGO:
        {
          return _ragoList();
        }
      case AlphabetCategoryType.LAGO:
        {
          return _lagoList();
        }
      case AlphabetCategoryType.SAGO:
        {
          return _sogoList();
        }
      case AlphabetCategoryType.YATAK:
        {
          return _yatakList();
        }
      case AlphabetCategoryType.RATAK:
        {
          return _ratakList();
        }
      case AlphabetCategoryType.LATAK:
        {
          return _latakist();
        }
      default:
        return [];
    }
  }

  static List<Word> getWordList(UseCaseType type, _useCaseItemListState) {
    switch (type) {
      case UseCaseType.COLORS:
        {
          return _colorList(_useCaseItemListState);
        }
      case UseCaseType.FAMILY:
        {
          return _familyWordList(_useCaseItemListState);
        }
      case UseCaseType.GREETING:
        {
          return _greetingWordList(_useCaseItemListState);
        }
      case UseCaseType.NUMBERS:
        {
          return _numberWordList(_useCaseItemListState);
        }
      case UseCaseType.PRONOUN:
        {
          return _pronounWordList(_useCaseItemListState);
        }
      default:
        return [];
    }
  }

  static List<Word> _colorList(useCaseItemListState) {
    return [
      Word(
        english: 'White',
        koreanWord: '하얀색',
        englishSound: 'hayansaeg',
        assetPath: 'assets/audio/colors/white.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
          english: 'Red',
          koreanWord: '빨간색',
          englishSound: 'ppalgansaeg',
          assetPath: 'assets/audio/colors/red.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Black',
          koreanWord: '검은 색',
          englishSound: 'geom-eun saeg',
          assetPath: 'assets/audio/colors/black.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Yellow',
          koreanWord: '노랑',
          englishSound: 'nolang',
          assetPath: 'assets/audio/colors/yellow.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Green',
          koreanWord: '녹색',
          englishSound: 'nogsaeg',
          assetPath: 'assets/audio/colors/green.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Blue',
          koreanWord: '푸른',
          englishSound: 'puleun',
          assetPath: 'assets/audio/colors/blue.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Pink',
          koreanWord: '분홍',
          englishSound: 'bunhong',
          assetPath: 'assets/audio/colors/pink.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Purple',
          koreanWord: '보라',
          englishSound: 'bola',
          assetPath: 'assets/audio/colors/purple.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Orange',
          koreanWord: '주황색',
          englishSound: 'juhwangsaeg',
          assetPath: 'assets/audio/colors/orange.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
          english: 'Grey',
          koreanWord: '회색',
          englishSound: 'hoesaeg',
          assetPath: 'assets/audio/colors/grey.mp3',
          animationController: AnimationController(
            vsync: useCaseItemListState,
            duration: Duration(milliseconds: 100),
            reverseDuration: Duration(milliseconds: 100),
          )),
      Word(
        english: 'Brown',
        koreanWord: '갈색',
        englishSound: 'galsaeg',
        assetPath: 'assets/audio/colors/brown.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
    ];
  }

  static List<Word> _familyWordList(useCaseItemListState) {
    return [
      Word(
        english: 'Family',
        koreanWord: '가족',
        englishSound: 'gajog',
        assetPath: 'assets/audio/family/family.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Parent',
        koreanWord: '부모의',
        englishSound: 'bumoui',
        assetPath: 'assets/audio/family/parent.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Mother',
        koreanWord: '어머니',
        englishSound: 'eomeoni',
        assetPath: 'assets/audio/family/mother.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Father',
        koreanWord: '아버지',
        englishSound: 'abeoji',
        assetPath: 'assets/audio/family/father.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Son',
        koreanWord: '아들',
        englishSound: 'adeul',
        assetPath: 'assets/audio/family/son.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Daughter',
        koreanWord: '딸',
        englishSound: 'ttal',
        assetPath: 'assets/audio/family/daughter.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Brother',
        koreanWord: '형제',
        englishSound: 'hyeongje',
        assetPath: 'assets/audio/family/brother.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Elder Brother',
        koreanWord: '형',
        englishSound: 'hyeong',
        assetPath: 'assets/audio/family/elderbrother.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Younger Brother',
        koreanWord: '남동생',
        englishSound: 'namdongsaeng',
        assetPath: 'assets/audio/family/youngerbrother.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Sister',
        koreanWord: '자매',
        englishSound: 'jamae',
        assetPath: 'assets/audio/family/sister.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Elder Sister',
        koreanWord: '언니',
        englishSound: 'eonni',
        assetPath: 'assets/audio/family/eldersister.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Younger Sister',
        koreanWord: '여동생',
        englishSound: 'yeodongsaeng',
        assetPath: 'assets/audio/family/youngersister.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Grandson/Nephew',
        koreanWord: '손자',
        englishSound: 'sonja',
        assetPath: 'assets/audio/family/grandson.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'GrandDaughter/Niece',
        koreanWord: '손녀',
        englishSound: 'sonnyeo',
        assetPath: 'assets/audio/family/granddaughter.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Uncle',
        koreanWord: '삼촌',
        englishSound: 'samchon',
        assetPath: 'assets/audio/family/uncle.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Aunt',
        koreanWord: '이모',
        englishSound: 'imo',
        assetPath: 'assets/audio/family/aunt.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Husband',
        koreanWord: '남편',
        englishSound: 'nampyeon',
        assetPath: 'assets/audio/family/husband.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Wife',
        koreanWord: '부인',
        englishSound: 'bu-in',
        assetPath: 'assets/audio/family/wife.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Boy Friend',
        koreanWord: '남자 친구',
        englishSound: 'namja chingu',
        assetPath: 'assets/audio/family/bf.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Relative',
        koreanWord: '상대적인',
        englishSound: 'sangdaejeog-in',
        assetPath: 'assets/audio/family/relative.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Grand Father',
        koreanWord: '할아버지',
        englishSound: 'hal-abeoji',
        assetPath: 'assets/audio/family/grandfather.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Grand Mother',
        koreanWord: '할머니',
        englishSound: 'halmeoni',
        assetPath: 'assets/audio/family/grandmother.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
    ];
  }

  static List<Word> _greetingWordList(useCaseItemListState) {
    return [
      Word(
        english: 'Hello/Hi',
        koreanWord: '안녕하세요',
        englishSound: 'annyeonghaseyo',
        assetPath: 'assets/audio/greeting/hi.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Good Morning',
        koreanWord: '좋은 아침이에요',
        englishSound: 'joh-eun achim-ieyo',
        assetPath: 'assets/audio/greeting/goodmorning.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Good Afternoon',
        koreanWord: '좋은 오후에요',
        englishSound: 'joh-eun ohueyo',
        assetPath: 'assets/audio/greeting/goodafternoon.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Good Evening',
        koreanWord: '좋은 저녁이에요',
        englishSound: 'joh-eun jeonyeog-ieyo',
        assetPath: 'assets/audio/greeting/goodevening.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Good Night',
        koreanWord: '안녕히 주무세요',
        englishSound: 'annyeonghi jumuseyo',
        assetPath: 'assets/audio/greeting/goodnight.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Good Bye',
        koreanWord: '안녕',
        englishSound: 'annyeong',
        assetPath: 'assets/audio/greeting/goodbye.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Take care',
        koreanWord: '잘 지내세요',
        englishSound: 'jal jinaeseyo',
        assetPath: 'assets/audio/greeting/takecare.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'See You later',
        koreanWord: '나중에 봐요',
        englishSound: 'najung-e bwayo',
        assetPath: 'assets/audio/greeting/seeyou.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Nice to meet you',
        koreanWord: '만나서 반가워',
        englishSound: 'mannaseo bangawo',
        assetPath: 'assets/audio/greeting/nicetomeetyou.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Cheers',
        koreanWord: '건배',
        englishSound: 'geonbae',
        assetPath: 'assets/audio/greeting/cheers.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Great/Nice',
        koreanWord: '멋진',
        englishSound: 'meosjin',
        assetPath: 'assets/audio/greeting/great.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Celebration',
        koreanWord: '축하',
        englishSound: 'chugha',
        assetPath: 'assets/audio/greeting/celebration.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Respect',
        koreanWord: '존경',
        englishSound: 'jongyeong',
        assetPath: 'assets/audio/greeting/respect.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Smile',
        koreanWord: '웃다',
        englishSound: 'usda',
        assetPath: 'assets/audio/greeting/smile.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
    ];
  }

  static List<Word> _numberWordList(useCaseItemListState) {
    return [
      Word(
        english: 'Zero',
        koreanWord: 'ཀླད་ཀོར།',
        englishSound: 'lhai koy',
        assetPath: 'assets/audio/number/zero.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'One',
        koreanWord: '하나',
        englishSound: 'hana',
        assetPath: 'assets/audio/number/one.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Two',
        koreanWord: '둘',
        englishSound: 'dul',
        assetPath: 'assets/audio/number/two.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Three',
        koreanWord: '삼',
        englishSound: 'sam',
        assetPath: 'assets/audio/number/three.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Four',
        koreanWord: '네',
        englishSound: 'ne',
        assetPath: 'assets/audio/number/four.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Five',
        koreanWord: '다섯',
        englishSound: 'daseos',
        assetPath: 'assets/audio/number/five.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Six',
        koreanWord: '육',
        englishSound: 'yug',
        assetPath: 'assets/audio/number/six.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Seven',
        koreanWord: '세븐',
        englishSound: 'sebeun',
        assetPath: 'assets/audio/number/seven.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Eight',
        koreanWord: '여덟',
        englishSound: 'yeodeolb',
        assetPath: 'assets/audio/number/eight.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Nine',
        koreanWord: '아홉',
        englishSound: 'ahob',
        assetPath: 'assets/audio/number/nine.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Ten',
        koreanWord: '십',
        englishSound: 'sib',
        assetPath: 'assets/audio/number/ten.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Hundred',
        koreanWord: '백',
        englishSound: 'baeg',
        assetPath: 'assets/audio/number/hundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Two hundred',
        koreanWord: '이백',
        englishSound: 'ibaeg',
        assetPath: 'assets/audio/number/twohundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Three hundred',
        koreanWord: '삼백',
        englishSound: 'sambaeg',
        assetPath: 'assets/audio/number/threehundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Four hundred',
        koreanWord: '사백',
        englishSound: 'sabaeg',
        assetPath: 'assets/audio/number/fourhundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Five hundred',
        koreanWord: '오백',
        englishSound: 'obaeg',
        assetPath: 'assets/audio/number/fivehundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Six hundred',
        koreanWord: '육백',
        englishSound: 'yugbaeg',
        assetPath: 'assets/audio/number/sixhundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Seven hundred',
        koreanWord: '칠백',
        englishSound: 'chilbaeg',
        assetPath: 'assets/audio/number/sevenhundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Eight hundred',
        koreanWord: '팔 백',
        englishSound: 'pal baeg',
        assetPath: 'assets/audio/number/eighthundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Nine hundred',
        koreanWord: '구백',
        englishSound: 'gubaeg',
        assetPath: 'assets/audio/number/ninehundred.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Thousand',
        koreanWord: '천',
        englishSound: 'cheon',
        assetPath: 'assets/audio/number/thousand.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Ten thousand',
        koreanWord: '만',
        englishSound: 'man',
        assetPath: 'assets/audio/number/tenthousand.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Hundred Thousand',
        koreanWord: '십만',
        englishSound: 'sibman',
        assetPath: 'assets/audio/number/hundredthousand.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Million',
        koreanWord: '백만',
        englishSound: 'baegman',
        assetPath: 'assets/audio/number/million.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Billion',
        koreanWord: '억',
        englishSound: 'eog',
        assetPath: 'assets/audio/number/billion.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
    ];
  }

  static List<Word> _pronounWordList(useCaseItemListState) {
    return [
      Word(
        english: 'I',
        koreanWord: '나',
        englishSound: 'na',
        assetPath: 'assets/audio/pronoun/i.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'You',
        koreanWord: '너',
        englishSound: 'neo',
        assetPath: 'assets/audio/pronoun/you.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'He/She',
        koreanWord: '그/그녀',
        englishSound: 'geu/geunyeo',
        assetPath: 'assets/audio/pronoun/heorshe.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'We',
        koreanWord: '우리',
        englishSound: 'uli',
        assetPath: 'assets/audio/pronoun/we.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'They',
        koreanWord: '그들',
        englishSound: 'geudeul',
        assetPath: 'assets/audio/pronoun/they.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'This',
        koreanWord: '이것',
        englishSound: 'igeos',
        assetPath: 'assets/audio/pronoun/this.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'That',
        koreanWord: '저것',
        englishSound: 'jeogeos',
        assetPath: 'assets/audio/pronoun/that.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'These',
        koreanWord: '이것들',
        englishSound: 'igeosdeul',
        assetPath: 'assets/audio/pronoun/these.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Those',
        koreanWord: '저것들',
        englishSound: 'jeogeosdeul',
        assetPath: 'assets/audio/pronoun/those.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
      Word(
        english: 'Their',
        koreanWord: '그들의',
        englishSound: 'geudeul-ui',
        assetPath: 'assets/audio/pronoun/their.mp3',
        animationController: AnimationController(
          vsync: useCaseItemListState,
          duration: Duration(milliseconds: 100),
          reverseDuration: Duration(milliseconds: 100),
        ),
      ),
    ];
  }

  static List<Alphabet> _alphabetList() {
    return [
      Alphabet(englishPronoun: 'giyeok', alphabetName: 'ㄱ'),
      Alphabet(englishPronoun: 'ssangiyeok', alphabetName: 'ㄲ'),
      Alphabet(englishPronoun: 'nieun', alphabetName: 'ㄴ'),
      Alphabet(englishPronoun: 'digeut', alphabetName: 'ㄷ'),
      Alphabet(englishPronoun: 'ssangdigeut', alphabetName: 'ㄸ'),
      Alphabet(englishPronoun: 'rieul', alphabetName: 'ㄹ'),
      Alphabet(englishPronoun: 'mieum', alphabetName: 'ㅁ'),
      Alphabet(englishPronoun: 'bieup', alphabetName: 'ㅂ'),
      Alphabet(englishPronoun: 'ssangbieup', alphabetName: 'ㅃ'),
      Alphabet(englishPronoun: 'siot', alphabetName: 'ㅅ'),
      Alphabet(englishPronoun: 'ssangsiot', alphabetName: 'ㅆ'),
      Alphabet(englishPronoun: 'ieung', alphabetName: 'ㅇ'),
      Alphabet(englishPronoun: 'jieut', alphabetName: 'ㅈ'),
      Alphabet(englishPronoun: 'ssangjieut', alphabetName: 'ㅉ'),
      Alphabet(englishPronoun: 'chieut', alphabetName: 'ㅊ'),
      Alphabet(englishPronoun: 'kieuk', alphabetName: 'ㅋ'),
      Alphabet(englishPronoun: 'tieut', alphabetName: 'ㅌ'),
      Alphabet(englishPronoun: 'pieup', alphabetName: 'ㅍ'),
      Alphabet(englishPronoun: 'hieut', alphabetName: 'ㅎ'),
    ];
  }

  static List<Alphabet> _vowelList() {
    return [
      Alphabet(englishPronoun: 'a', alphabetName: 'ㅏ'),
      Alphabet(englishPronoun: 'ae', alphabetName: 'ㅐ'),
      Alphabet(englishPronoun: 'ya', alphabetName: 'ㅑ'),
      Alphabet(englishPronoun: 'yae', alphabetName: 'ㅒ'),
      Alphabet(englishPronoun: 'eo', alphabetName: 'ㅓ'),
      Alphabet(englishPronoun: 'e', alphabetName: 'ㅔ'),
      Alphabet(englishPronoun: 'yeo', alphabetName: 'ㅕ'),
      Alphabet(englishPronoun: 'ye', alphabetName: 'ㅖ'),
      Alphabet(englishPronoun: 'o', alphabetName: 'ㅗ'),
      Alphabet(englishPronoun: 'wa', alphabetName: 'ㅘ'),
      Alphabet(englishPronoun: 'wae', alphabetName: 'ㅙ'),
      Alphabet(englishPronoun: 'oe', alphabetName: 'ㅚ'),
      Alphabet(englishPronoun: 'yo', alphabetName: 'ㅛ'),
      Alphabet(englishPronoun: 'u', alphabetName: 'ㅜ'),
      Alphabet(englishPronoun: 'wo', alphabetName: 'ㅝ'),
      Alphabet(englishPronoun: 'we', alphabetName: 'ㅞ'),
      Alphabet(englishPronoun: 'wi', alphabetName: 'ㅟ'),
      Alphabet(englishPronoun: 'yu', alphabetName: 'ㅠ'),
      Alphabet(englishPronoun: 'eu', alphabetName: 'ㅡ'),
      Alphabet(englishPronoun: 'ui', alphabetName: 'ㅢ'),
      Alphabet(englishPronoun: 'i', alphabetName: 'ㅣ'),
    ];
  }

  static List<Alphabet> _fivePrefixList() {
    return [
      Alphabet(englishPronoun: 'ga', alphabetName: 'ག'),
      Alphabet(englishPronoun: 'da', alphabetName: 'ད'),
      Alphabet(englishPronoun: 'ba', alphabetName: 'བ'),
      Alphabet(englishPronoun: 'ma', alphabetName: 'མ'),
      Alphabet(englishPronoun: 'yya', alphabetName: 'འ'),
    ];
  }

  static List<Alphabet> _tenSuffixList() {
    return [
      Alphabet(englishPronoun: 'ga', alphabetName: 'ག'),
      Alphabet(englishPronoun: 'nga', alphabetName: 'ང'),
      Alphabet(englishPronoun: 'da', alphabetName: 'ད'),
      Alphabet(englishPronoun: 'na', alphabetName: 'ན'),
      Alphabet(englishPronoun: 'ba', alphabetName: 'བ'),
      Alphabet(englishPronoun: 'ma', alphabetName: 'མ'),
      Alphabet(englishPronoun: 'yya', alphabetName: 'འ'),
      Alphabet(englishPronoun: 'ra', alphabetName: 'ར'),
      Alphabet(englishPronoun: 'la', alphabetName: 'ལ'),
      Alphabet(englishPronoun: 'sa', alphabetName: 'ས'),
    ];
  }

  static List<Alphabet> _twoPostfixList() {
    return [
      Alphabet(englishPronoun: 'da', alphabetName: 'ད'),
      Alphabet(englishPronoun: 'sa', alphabetName: 'ས'),
    ];
  }

  static List<Alphabet> _ragoList() {
    return [
      Alphabet(englishPronoun: 'rakatak', alphabetName: 'རྐ།'),
      Alphabet(englishPronoun: 'ragatak', alphabetName: 'རྒ།'),
      Alphabet(englishPronoun: 'rangatak', alphabetName: 'རྔ།'),
      Alphabet(englishPronoun: 'rajatak', alphabetName: 'རྗ།'),
      Alphabet(englishPronoun: 'ranyatak', alphabetName: 'རྙ།'),
      Alphabet(englishPronoun: 'ratadak', alphabetName: 'རྟ།'),
      Alphabet(englishPronoun: 'radadak', alphabetName: 'རྡ།'),
      Alphabet(englishPronoun: 'ranatak', alphabetName: 'རྣ།'),
      Alphabet(englishPronoun: 'rabatak', alphabetName: 'རྦ།'),
      Alphabet(englishPronoun: 'ramatak', alphabetName: 'རྨ།'),
      Alphabet(englishPronoun: 'ratsatak', alphabetName: 'རྩ།'),
      Alphabet(englishPronoun: 'razatak', alphabetName: 'རྫ'),
    ];
  }

  static List<Alphabet> _lagoList() {
    return [
      Alphabet(englishPronoun: 'lakatak', alphabetName: 'ལྐ།'),
      Alphabet(englishPronoun: 'lagatak', alphabetName: 'ལྒ།'),
      Alphabet(englishPronoun: 'langatak', alphabetName: 'ལྔ།'),
      Alphabet(englishPronoun: 'lachatak', alphabetName: 'ལྕ།'),
      Alphabet(englishPronoun: 'lajatak', alphabetName: 'ལྗ།'),
      Alphabet(englishPronoun: 'latadak', alphabetName: 'ལྟ།'),
      Alphabet(englishPronoun: 'ladatak', alphabetName: 'ལྡ།'),
      Alphabet(englishPronoun: 'lapatak', alphabetName: 'ལྤ།'),
      Alphabet(englishPronoun: 'labadak', alphabetName: 'ལྦ།'),
      Alphabet(englishPronoun: 'lahatak', alphabetName: 'ལྷ།'),
    ];
  }

  static List<Alphabet> _sogoList() {
    return [
      Alphabet(englishPronoun: 'sakadak', alphabetName: 'སྐ།'),
      Alphabet(englishPronoun: 'sakhatak', alphabetName: 'སྑ།'),
      Alphabet(englishPronoun: 'sangatak', alphabetName: 'སྔ།'),
      Alphabet(englishPronoun: 'sanyatak', alphabetName: 'སྙ།'),
      Alphabet(englishPronoun: 'satadak', alphabetName: 'སྟ།'),
      Alphabet(englishPronoun: 'sadatak', alphabetName: 'སྡ།'),
      Alphabet(englishPronoun: 'sanatak', alphabetName: 'སྣ།'),
      Alphabet(englishPronoun: 'sapatak', alphabetName: 'སྤ།'),
      Alphabet(englishPronoun: 'sabatak', alphabetName: 'སྦ།'),
      Alphabet(englishPronoun: 'samatak', alphabetName: 'སྨ།'),
      Alphabet(englishPronoun: 'satsatak', alphabetName: 'སྩ།'),
    ];
  }

  static List<Alphabet> _yatakList() {
    return [
      Alphabet(englishPronoun: 'kayatak', alphabetName: 'ཀྱ།'),
      Alphabet(englishPronoun: 'khayatak', alphabetName: 'ཁྱ།'),
      Alphabet(englishPronoun: 'gayatak', alphabetName: 'གྱ།'),
      Alphabet(englishPronoun: 'payatak', alphabetName: 'པྱ།'),
      Alphabet(englishPronoun: 'phayatak', alphabetName: 'ཕྱ།'),
      Alphabet(englishPronoun: 'bayatak', alphabetName: 'བྱ།'),
      Alphabet(englishPronoun: 'mayatak', alphabetName: 'མྱ།'),
    ];
  }

  static List<Alphabet> _ratakList() {
    return [
      Alphabet(englishPronoun: 'karatak', alphabetName: 'ཀྲ།'),
      Alphabet(englishPronoun: 'kharak', alphabetName: 'ཁྲ།'),
      Alphabet(englishPronoun: 'garatak', alphabetName: 'གྲ།'),
      Alphabet(englishPronoun: 'taratak', alphabetName: 'ཏྲ།'),
      Alphabet(englishPronoun: 'tharatak', alphabetName: 'ཐྲ།'),
      Alphabet(englishPronoun: 'daratak', alphabetName: 'དྲ།'),
      Alphabet(englishPronoun: 'paratak', alphabetName: 'པྲ།'),
      Alphabet(englishPronoun: 'pharatak', alphabetName: 'ཕྲ།'),
      Alphabet(englishPronoun: 'baratak', alphabetName: 'བྲ།'),
      Alphabet(englishPronoun: 'maratak', alphabetName: 'མྲ།'),
      Alphabet(englishPronoun: 'saratak', alphabetName: 'སྲ།'),
      Alphabet(englishPronoun: 'haratak', alphabetName: 'ཧྲ།'),
    ];
  }

  static List<Alphabet> _latakist() {
    return [
      Alphabet(englishPronoun: 'kalatak', alphabetName: 'ཀླ།'),
      Alphabet(englishPronoun: 'galatak', alphabetName: 'གླ།'),
      Alphabet(englishPronoun: 'balatak', alphabetName: 'བླ།'),
      Alphabet(englishPronoun: 'zalatak', alphabetName: 'ཟླ།'),
      Alphabet(englishPronoun: 'ralatak', alphabetName: 'རླ།'),
      Alphabet(englishPronoun: 'salatak', alphabetName: 'སླ།'),
    ];
  }
}
