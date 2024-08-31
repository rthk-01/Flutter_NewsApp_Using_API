import 'package:flutter/material.dart';
import 'package:flutter_news_app_with_api/helper/news.dart';
import 'package:flutter_news_app_with_api/models/article_model.dart';
import 'package:flutter_news_app_with_api/views/home.dart';

class CategoryNews extends StatefulWidget {
  final String category;
  CategoryNews({required this.category});
  // const CategoryNews({super.key});

  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticleModel> articles = [];
  bool _isLoading = true;

  Future<void> getCategoryNews() async {
    CategoryNewsClass news = CategoryNewsClass();
    await news.getCategoryNews(widget.category);
    articles = news.news;
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter'),
            Text(
              'News',
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        elevation: 0.0,
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Icon(Icons.save),
            ),
          ),
        ],
      ),
      body: _isLoading
          ? Center(
              child: Container(
                child: CircularProgressIndicator(),
              ),
            )
          : Container(
              child: Column(
                children: [
                  Container(
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      itemCount: articles.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return BlogTile(
                          imageUrl: articles[index].urlToImage,
                          title: articles[index].title,
                          description: articles[index].description,
                          url: articles[index].url,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
