import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('NewsToday',
            style: TextStyle(color: Colors.black, fontSize: 40)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'news',
                            arguments: {'section': 'home'});
                      },
                      child: Container(
                        height: 60,
                        child: Center(
                          child: Text(
                            'HOME',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'news',
                            arguments: {'section': 'home'});
                      },
                      child: Container(
                        height: 60,
                        child: Center(
                          child: Text(
                            'EDUCATION',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'news',
                            arguments: {'section': 'home'});
                      },
                      child: Container(
                        height: 60,
                        child: Center(
                          child: Text(
                            'BUISNESS',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'news',
                            arguments: {'section': 'home'});
                      },
                      child: Container(
                        height: 60,
                        child: Center(
                          child: Text(
                            'AGRICULTURE',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'news',
                            arguments: {'section': 'home'});
                      },
                      child: Container(
                        height: 60,
                        child: Center(
                          child: Text(
                            'SPORTS',
                            style: TextStyle(
                              fontSize: 35,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            height: height / 1,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
