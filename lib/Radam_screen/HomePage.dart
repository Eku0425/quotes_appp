import 'dart:math';

import 'package:flutter/material.dart';

import '../utils/golbalList.dart';
import '../utils/quoteModal.dart';
QuoteModel? quoteModel;

class HomePageScren extends StatefulWidget {
  const HomePageScren({super.key});

  @override
  State<HomePageScren> createState() => _HomePageScrenState();
}

class _HomePageScrenState extends State<HomePageScren> {
  get quoteModel => null;

  get quoteList => null;



  void initState() {
    var quoteModel = QuoteModel.toList(quoteList);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('Quotes App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            quoteModel!.quoteModelList.length,
                (index) => Card(

              // color: colorList[index % 5],
              child: ListTile(

                title: Text(quoteModel!.quoteModelList[index].quote!),
                subtitle: Text(quoteModel!.quoteModelList[index].author!),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   index++;
          // });
          Random random = Random();
          int x = random.nextInt(quoteModel!.quoteModelList.length);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              backgroundColor: colorList[x % colorList.length],
              title: Text(quoteModel!.quoteModelList[x].author!),
              content: Text(quoteModel!.quoteModelList[x].quote!),
              actions: [
                TextButton(
                  onPressed: () {},
                  child: Text('Save'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Back'),
                ),
              ],
            ),
          );
        },
        child: Icon(Icons.notifications),
      ),
    );
  }
}

