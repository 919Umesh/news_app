import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Models/news_model.dart';
import 'homepage_repo.dart';

class HomepageController extends GetxController {
  final isLoading = false.obs;
  final newsCategories = <NewsCategoryModel>[].obs;

  var selectedCategoryIndex = 0.obs;

  NewsCategoryModel get selectedCategory =>
      newsCategories[selectedCategoryIndex.value];

  @override
  Future<void> onInit() async {
    super.onInit();
    await fetchNewsCategories();
  }

  Future<void> fetchNewsCategories() async {
    isLoading.value = true;
    try {
      final categories = await homePageRepository.fetchNewsCategories();
      newsCategories.value = categories;
    } catch (e) {
      debugPrint("Error fetching news categories: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
