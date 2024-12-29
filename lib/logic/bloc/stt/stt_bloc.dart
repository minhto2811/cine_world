import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';

part 'stt_event.dart';
part 'stt_state.dart';

class SttBloc extends Bloc<SttEvent, SttState> {
  SttBloc() : super(SttInitial()) {
    on<InitialEvent>(_init);
    on<TextListenedEvent>(_listen);
  }

  final _speech = SpeechToText();
  String? _text;

  void _onStatus(String status) {
    if (status == 'done') {
      MyRoute.pop(arguments: _text);
    }
  }

  void _init(InitialEvent event, Emitter<SttState> emit) async {
    bool available = await _speech.initialize(onStatus: _onStatus,debugLogging: true);
    if (!available) {
      MyRoute.pop();
      MyRoute.toast(S.current.feature_not_available);
      return;
    }
    _speech.listen(
        pauseFor: const Duration(seconds: 5),
        listenFor: const Duration(seconds: 30),
        listenOptions: SpeechListenOptions(
          autoPunctuation: true,
          onDevice: true,
          listenMode: ListenMode.search,
        ),
        onSoundLevelChange:_onSoundLevelChange,
        onResult: _onResult);
  }

  void _onSoundLevelChange(double level) {
    debugPrint('Sound level: $level');
  }

  void _listen(TextListenedEvent event, Emitter<SttState> emit) {
    emit(ListeningState(text: _text!));
  }

  void _onResult(SpeechRecognitionResult result) {
    debugPrint('Recognized: ${result.recognizedWords}');
    _text = result.recognizedWords;
    if (_text?.isNotEmpty ?? false) {
      add(const TextListenedEvent());
    }
  }

  @override
  Future<void> close() {
    _speech.cancel();
    return super.close();
  }
}
