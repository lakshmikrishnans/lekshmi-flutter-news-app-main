import 'package:flutter/material.dart';
import 'package:newstoday_app/models/news_models.dart';
import 'package:newstoday_app/providers/news_providers.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final newsProvider = Provider.of<NewsProvider>(context);
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onPanUpdate: (swipe) {
        if (swipe.delta.dx > 0) {
          Navigator.pushNamed(context, "category");
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'NewsToday',
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: FutureBuilder(
            future: newsProvider.fetchData('home'),
            builder: (context, AsyncSnapshot response) {
              if (response.hasData) {
                List<NewsModel> data = response.data;
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height: 300,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          data[0].image.toString()),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          height: 130,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      data[1].image.toString()),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Text(
                                              data[1].title,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 130,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                  height: 130,
                                  color: Colors.lightBlue,
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 4,
                                        child: Container(
                                          height: 130,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      data[2].image.toString()),
                                                  fit: BoxFit.fill)),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            child: Text(
                                              data[2].title,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  height: 130,
                                  color: Colors.lightBlue,
                                )
                              ],
                            ),
                          ),
                          height: height / 1.4,
                          color: Colors.grey.shade300,
                        ),
                        Container()
                      ],
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
      ),
    );
  }
}
