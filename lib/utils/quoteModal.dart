import 'package:flutter/material.dart';



class  QuoteModel

{
  String? quote;
  String? author;
  List<QuoteModel> quoteModelList = [];

  QuoteModel({this.author,this.quote});

  factory QuoteModel.fromQuote(Map m1)
  {
    return QuoteModel(author: m1['author'],quote: m1['quote']);
  }

  QuoteModel.toList(List l1)
  {
    for(int i=0; i<l1.length; i++)
    {
      quoteModelList.add(QuoteModel.fromQuote(l1[i]),);

    }

  }
}
int index = 0;
List colorList=[
  Colors.orange,
  Colors.green,
  Colors.blue,
  Colors.cyan,
  Colors.red,
  Colors.blueAccent,
  Colors.orange,
  Colors.blue,
  Colors.cyan,
  Colors.blueGrey,
];