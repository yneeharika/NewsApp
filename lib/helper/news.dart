import 'package:news_app/models/articlemodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class News {

  List<ArticleModel> news  = [];

  Future<void> getNews() async{

    String url = "https://newsapi.org/v2/top-headlines?country=in&apiKey=26ed5a7a2f6e48039b1564951ec11913";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'] ??'',
            author: element['author']??'',
            description: element['description'] ??'',
            url:element["url"]??'',
            urlToImage: element['urlToImage'] ??'',
            // publishedAt: DateTime.parse(element['publishedAt']),
            content: element["content"] ??'',
          );
          news.add(articleModel);
        }

      });
    }
  }
}

class CategoryNewsClass {

  List<ArticleModel> news  = [];

  Future<void> getNews(String category) async{

    String url = "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=26ed5a7a2f6e48039b1564951ec11913";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if(jsonData['status'] == "ok"){
      jsonData["articles"].forEach((element){

        if(element['urlToImage'] != null && element['description'] != null){
          ArticleModel articleModel = ArticleModel(
            title: element['title'] ??'',
            author: element['author']??'',
            description: element['description'] ??'',
            url:element["url"]??'',
            urlToImage: element['urlToImage'] ??'',
            // publishedAt: DateTime.parse(element['publishedAt']),
            content: element["content"] ??'',
          );
          news.add(articleModel);
        }

      });
    }
  }
}