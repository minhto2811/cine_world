part of 'banner_bloc.dart';

sealed class BannerEvent extends Equatable {
  const BannerEvent();
}

final class InitialEvent extends BannerEvent {
  const InitialEvent();

  @override
  List<Object?> get props => [];
}
