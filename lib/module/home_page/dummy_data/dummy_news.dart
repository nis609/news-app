import 'dart:convert';

import 'package:news_portal_app/module/home_page/dummy_data/repo.dart';


class NewsArticle {

  final String title;
  final String? descrption;
  final String urlToImage;

  NewsArticle({required this.title,  this.descrption, required this.urlToImage});

  factory NewsArticle.fromJson(Map<String,dynamic> json) {
    return NewsArticle(
        title: json['title'],
        descrption: json['description'],
        urlToImage: json['urlToImage'] ?? Constants.NEWS_PLACEHOLDER_IMAGE_ASSET_URL
    );
  }
  static Resource<List<NewsArticle>> get all {

    return Resource(
        url: Constants.HEADLINE_NEWS_URL,
        parse: (response) {
          final result = json.decode(response.body);
          Iterable list = result['articles'];
          return list.map((model) => NewsArticle.fromJson(model)).toList();
        }
    );

  }


}

class Constants {

  static final String HEADLINE_NEWS_URL = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=7cd2378ef0fb483e855300a00566b20a';

  static final String NEWS_PLACEHOLDER_IMAGE_ASSET_URL = 'assets/placeholder.png';

}