import 'package:cine_world/data/repositories/local/database.dart';
import 'package:cine_world/data/repositories/remote/film_remote_repository.dart';
import 'package:cine_world/data/services/admod_service.dart';
import 'package:cine_world/data/services/api_service.dart';
import 'package:cine_world/data/use_cases/check_favourite_use_case.dart';
import 'package:cine_world/data/use_cases/check_first_time_use_case.dart';
import 'package:cine_world/data/use_cases/delete_favourite_use_case.dart';
import 'package:cine_world/data/use_cases/delete_search_history_use_case.dart';
import 'package:cine_world/data/use_cases/get_banner_ad_use_case.dart';
import 'package:cine_world/data/use_cases/get_favourites_use_case.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_local_use_case.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_use_case.dart';
import 'package:cine_world/data/use_cases/get_native_ad_use_case.dart';
import 'package:cine_world/data/use_cases/get_previews_local_use_case.dart';
import 'package:cine_world/data/use_cases/get_previews_use_case.dart';
import 'package:cine_world/data/use_cases/get_search_histories_use_case.dart';
import 'package:cine_world/data/use_cases/get_video_duration_use_case.dart';
import 'package:cine_world/data/use_cases/insert_favourite_use_case.dart';
import 'package:cine_world/data/use_cases/insert_film_local_use_case.dart';
import 'package:cine_world/data/use_cases/insert_previews_local_use_case.dart';
import 'package:cine_world/data/use_cases/insert_search_history_use_case.dart';
import 'package:cine_world/data/use_cases/precache_image_use_case.dart';
import 'package:cine_world/data/use_cases/save_video_duration_use_case.dart';
import 'package:cine_world/data/use_cases/search_previews_use_case.dart';
import 'package:cine_world/logic/bloc/episode/episode_bloc.dart';
import 'package:cine_world/logic/bloc/favourite/favourite_bloc.dart';
import 'package:cine_world/logic/bloc/film/film_bloc.dart';
import 'package:cine_world/logic/bloc/language/language_bloc.dart';
import 'package:cine_world/logic/bloc/page_preview/page_preview_bloc.dart';
import 'package:cine_world/logic/bloc/play_video/play_video_bloc.dart';
import 'package:cine_world/logic/bloc/search/search_bloc.dart';
import 'package:cine_world/logic/bloc/settings/settings_bloc.dart';
import 'package:cine_world/logic/bloc/stt/stt_bloc.dart';
import 'package:cine_world/logic/bloc/theme/theme_bloc.dart';
import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:cine_world/logic/cubit/theme/theme_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:cine_world/logic/bloc/splash/splash_bloc.dart';
part './app_inject.dart';
part './cubit_inject.dart';
part './bloc_inject.dart';
part './repo_inject.dart';
part './use_case_inject.dart';
part './service_inject.dart';




final getIt = GetIt.instance;