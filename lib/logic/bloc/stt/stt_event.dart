part of 'stt_bloc.dart';

sealed class SttEvent extends Equatable {
  const SttEvent();
}

final class InitialEvent extends SttEvent{
  const InitialEvent();

  @override
  List<Object?> get props => [];
}

final class TextListenedEvent extends SttEvent{
  const TextListenedEvent();

  @override
  List<Object?> get props => [];
}
