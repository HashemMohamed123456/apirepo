import 'dart:core';

class QuoteModel{
  String? qotdData;
  Quote? quote;
  static QuoteModel? globalobject;

  QuoteModel({this.qotdData,this.quote});
  QuoteModel.fromjson(Map<String,dynamic>json){
    qotdData=json['qotd_date'];
    quote=Quote.fromjson(json['quote']);
  }
}
class Quote{
  int? id;
  bool? dialogue;
  bool? private;
  List<String>? tags;
  String? url;
  int? favoritesCount;
  int? upVotesCount;
  int? downVotesCount;
  String? author;
  String? authorPermalink;
  String? body;

  Quote(
      {this.id,
      this.dialogue,
      this.private,
      this.tags,
      this.url,
      this.favoritesCount,
      this.upVotesCount,
      this.downVotesCount,
      this.author,
      this.authorPermalink,
      this.body});
  Quote.fromjson(Map<String,dynamic>json){
id=json['id'];
dialogue=json['dialogue'];
private=json['private'];
tags=json['tags'].cast<String>();
url=json['url'];
favoritesCount=json['favorites_count'];
upVotesCount=json['upvotes_count'];
downVotesCount=json['downvotes_count'];
author=json['author'];
authorPermalink=json['author_permalink'];
body=json['body'];
  }
}