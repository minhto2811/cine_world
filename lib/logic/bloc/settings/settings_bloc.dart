import 'package:cine_world/core/constants/app_constants.dart';
import 'package:cine_world/generated/l10n.dart';
import 'package:cine_world/presentation/route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(SettingsInitial()) {
    on<SupportEvent>(_supportEvent);
    on<ShareEvent>(_shareEvent);
  }

  void _shareEvent(ShareEvent event, Emitter<SettingsState> emit) async{
    const linkId =
        'App Store: ${AppConstants.appStoreId}\nGoogle Play: ${AppConstants.googlePlayId}';
    try {
      await Share.share(linkId);
    } catch (e) {
      if (!MyRoute.context.mounted) return;
      MyRoute.toast(S.current.feature_not_available);
    }
  }

  void _supportEvent(SupportEvent event, Emitter<SettingsState> emit) {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'mgok0328@gmail.com',
      query: _encodeQueryParameters(<String, String>{
        'subject': 'Mua source code liên hệ theo email này!',
      }),
    );
    launchUrl(emailLaunchUri);
  }

  String? _encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
    '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

}
