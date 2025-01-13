class NewsCategoryModel {
  NewsCategoryModel({
    required this.categoryName,
    required this.articles,
  });

  final String categoryName;
  final List<NewsArticleModel> articles;

  factory NewsCategoryModel.fromJson(String categoryName, List<dynamic> json) {
    return NewsCategoryModel(
      categoryName: categoryName,
      articles: json.map((e) => NewsArticleModel.fromJson(e)).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
    categoryName: articles.map((e) => e.toJson()).toList(),
  };
}

class NewsArticleModel {
  NewsArticleModel({
    required this.link,
    required this.og,
    required this.source,
    required this.sourceIcon,
    required this.title,
  });

  final String link;
  final String og;
  final String source;
  final String sourceIcon;
  final String title;

  factory NewsArticleModel.fromJson(Map<String, dynamic> json) {
    return NewsArticleModel(
      link: json["link"] ?? "",
      og: json["og"] ?? "",
      source: json["source"] ?? "",
      sourceIcon: json["source_icon"] ?? "",
      title: json["title"] ?? "",
    );
  }

  Map<String, dynamic> toJson() => {
    "link": link,
    "og": og,
    "source": source,
    "source_icon": sourceIcon,
    "title": title,
  };
}
