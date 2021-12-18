import 'package:bloc/bloc.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:korean_language_learning_app/util/exception.dart';

part 'audio_state.dart';

class AudioCubit extends Cubit<AudioState> {
  FlutterTts flutterTts;
  AudioCubit({required this.flutterTts}) : super(AudioInitial()) {
    initAudioListener();
  }

  Future<void> loadAudio() async {
    try {
      emit(AudioLoading());
      await flutterTts.setLanguage("ko-KR");
      await flutterTts.setPitch(1);
      emit(AudioLoaded(flutterTts));
      //listenToAudio();
    } on AudioException catch (e) {
      print(e.error());
    }
  }

  Future<void> playAudio(String koreanPronoun) async {
    await flutterTts.speak(koreanPronoun);
  }

  Future<void> pauseAudio() async {
    await flutterTts.pause();
  }

  Future<void> stopAudio() async {
    await flutterTts.stop();
    //pauseAudio();
  }

  void initAudioListener() {
    flutterTts.setStartHandler(() {
      emit(AudioPlaying());
    });

    flutterTts.setCompletionHandler(() {
      emit(AudioStopped());
    });

    flutterTts.setErrorHandler((msg) {
      emit(AudioStopped());
    });
    flutterTts.setCancelHandler(() {
      emit(AudioStopped());
    });
/*

    audioPlayer.playerStateStream.listen((playerState) {
      final isPlaying = playerState.playing;
      final processingState = playerState.processingState;
      if (processingState == ProcessingState.loading ||
          processingState == ProcessingState.buffering) {
        print('listener: loading');
      } else if (!isPlaying) {
        print('listener: paused');
        emit(AudioPause());
      } else if (processingState != ProcessingState.completed) {
        emit(AudioPlaying());
        print('listener: playing');
      } else {
        print('listener: finished');
        emit(AudioStopped());
        audioPlayer.seek(Duration.zero);
        audioPlayer.pause();
      }
    });*/
  }

  void destroyAudioPlayer() {
    flutterTts.cancelHandler!();
  }
}
