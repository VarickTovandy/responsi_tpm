import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:responsi/pages/newsdetail.dart';

class OlahragaPage extends StatefulWidget {
  @override
  _OlahragaPageState createState() => _OlahragaPageState();
}

class _OlahragaPageState extends State<OlahragaPage> {
  List<dynamic> newsList = [];
  List<dynamic> filteredNewsList = [];

  Future<void> fetchNewsData() async {
    final response = await http.get(Uri.parse("https://api-berita-indonesia.vercel.app/cnn/olahraga"));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        newsList = data['data']['posts'];
        filteredNewsList = newsList;
      });
    }
  }

  @override
  void initState() {
    fetchNewsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('CNN OLAHRAGA')),
      ),
      body: ListView.builder(
        itemCount: filteredNewsList.length,
        itemBuilder: (context, index) {
          final news = filteredNewsList[index];
          return ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
            tileColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: BorderSide(color: Colors.grey[200]!, width: 1.0),
            ),
            leading: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                child: Image.network(
                  news['thumbnail'],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            title: Text(
              news['title'],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
              ),
            ),
            onTap: () {
              // Handle news item tap
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetailPage(news: news),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
