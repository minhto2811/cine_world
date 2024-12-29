part of 'settings_bloc.dart';

sealed class SettingsEvent extends Equatable {
  const SettingsEvent();
}


final class SupportEvent extends SettingsEvent {
  const SupportEvent();
  @override
  List<Object> get props => [];
}
final class ShareEvent extends SettingsEvent {
  const ShareEvent();
  @override
  List<Object> get props => [];
}