import '../../Models/news_model.dart';
import '../../base/Api_end_point/api_endpoints.dart';
import '../../base/Dio_services/dio_base_repository.dart';

class HomePageRepository extends BaseRepository {
  Future<List<NewsCategoryModel>> fetchNewsCategories() async {
    final response = await getDataFromServer(
      ApiEndpoint.getNews,
      needsAuthorization: false,
      params: {},
    );

    final data = response.data as Map<String, dynamic>;

    // Convert JSON response to List of NewsCategoryModel
    return data.entries.map((entry) {
      final categoryName = entry.key;
      final articles = entry.value as List<dynamic>;
      return NewsCategoryModel.fromJson(categoryName, articles);
    }).toList();
  }
}

HomePageRepository homePageRepository = HomePageRepository();
