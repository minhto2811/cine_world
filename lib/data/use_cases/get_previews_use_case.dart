import 'package:cine_world/data/models/preview.dart';
import 'package:cine_world/data/services/api_services.dart';

class GetPreviewsUseCase {
  final ApiService _apiService;

  const GetPreviewsUseCase({required ApiService apiService})
      : _apiService = apiService;

  Future<List<Preview>> call({required String path, required int page}) async =>
      await _apiService.getPreviews(path: path, page: page);
}
