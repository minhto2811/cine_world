import 'package:cine_world/data/repositories/local/database.dart';
import 'package:cine_world/data/repositories/remote/film_remote_repository.dart';
import 'package:cine_world/data/services/api_service.dart';
import 'package:cine_world/data/use_cases/get_film_by_slug_use_case.dart';
import 'package:cine_world/data/use_cases/get_previews_local_use_case.dart';
import 'package:cine_world/data/use_cases/get_previews_use_case.dart';
import 'package:cine_world/data/use_cases/insert_previews_local_use_case.dart';
import 'package:cine_world/logic/bloc/film/film_bloc.dart';
import 'package:cine_world/logic/bloc/page_preview/page_preview_bloc.dart';
import 'package:cine_world/logic/cubit/language/language_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:cine_world/logic/bloc/splash/splash_bloc.dart';
part './app_inject.dart';
part './cubit_inject.dart';
part './bloc_inject.dart';
part './repo_inject.dart';
part './use_case_inject.dart';
part './service_inject.dart';




final getIt = GetIt.instance;