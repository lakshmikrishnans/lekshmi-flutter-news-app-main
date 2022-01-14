import 'package:flutter/material.dart';
import 'package:newstoday_app/models/news_models.dart';
import 'package:newstoday_app/providers/news_providers.dart';
import 'package:provider/provider.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);
    final argument = ModalRoute.of(context).settings.arguments as Map;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HOME',
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: newsProvider.fetchData(argument['section'].toString()),
          builder: (context, AsyncSnapshot response) {
            if (response.hasData) {
              List<NewsModel> data = response.data;
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: data.map((item) {
                      return Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 120,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      image: DecorationImage(
                                          fit: BoxFit.fill,
                                          image: NetworkImage(
                                              item.image.toString()))),
                                ),
                              ),
                              Expanded(
                                flex: 8,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    child: Text(
                                      item.title,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        height: 120,
                        color: Colors.grey.shade300,
                      );
                    }).toList(),
                  ),
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
          // child: SingleChildScrollView(
          //   child: Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.stretch,
          //       children: [
          //         Container(
          //           child: Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //               children: [
          //                 Container(
          //                   height: 300,
          //                   child: Image.network(
          //                       "https://image.shutterstock.com/image-vector/breaking-news-background-world-global-260nw-719766118.jpg"),
          //                 ),
          //                 Container(
          //                   child: Row(
          //                     children: [
          //                       Container(
          //                         height: 130,
          //                         width: 150,
          //                         color: Colors.black,
          //                         child: Image.network(
          //                             "https://img.etimg.com/thumb/height-150,width-200,imgsize-65086,msid-85988299/.jpg"),
          //                       ),
          //                       Padding(
          //                         padding: const EdgeInsets.all(8.0),
          //                         child: Container(
          //                           child: Text(
          //                             'etjyjryurtytu45u45',
          //                             style: TextStyle(
          //                                 color: Colors.black, fontSize: 30),
          //                           ),
          //                         ),
          //                       ),
          //                       Container(
          //                         height: 130,
          //                         color: Colors.grey,
          //                       ),
          //                     ],
          //                   ),
          //                   height: 130,
          //                   color: Colors.grey,
          //                 ),
          //                 Container(
          //                   child: Row(
          //                     children: [
          //                       Container(
          //                         height: 130,
          //                         width: 150,
          //                         color: Colors.black,
          //                         child: Image.network(
          //                             "https://img.etimg.com/thumb/height-150,width-200,imgsize-65086,msid-85988299/.jpg"),
          //                       ),
          //                       Container(
          //                         child: Text(
          //                           'etjyjryurtytu45u45',
          //                           style: TextStyle(
          //                               color: Colors.black, fontSize: 30),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                   height: 130,
          //                   color: Colors.grey,
          //                 )
          //               ],
          //             ),
          //           ),
          //           height: height / 1.4,
          //           color: Colors.grey.shade300,
          //         ),
          //         Container()
          //       ],
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}
