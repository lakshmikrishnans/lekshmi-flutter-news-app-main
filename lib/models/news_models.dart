import 'package:flutter/material.dart';

class NewsModel {
  final String title;
  final String desc;
  final String image;
  final String date;
  NewsModel(
      {@required this.title,
      @required this.desc,
      @required this.image,
      @required this.date});
  factory NewsModel.fromjson(Map<String, dynamic> item) {
    return NewsModel(
      title: item['title'] as String,
      desc: item['abstract'] as String,
      image: item['multimedia'][3]['url'] as String,
      date: item['published_date'] as String,
    );
  }
}
