part of 'stt_bloc.dart';

sealed class SttState extends Equatable {
  const SttState();
}

final class SttInitial extends SttState {
  @override
  List<Object> get props => [];
}

final class ListeningState extends SttState {
  final String text;

  const ListeningState({required this.text});

  @override
  List<Object> get props => [text];
}
