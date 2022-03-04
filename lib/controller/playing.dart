import 'package:flutter/material.dart';
import 'package:vaganza/model/play_place.dart';
import 'package:vaganza/model/rating_place.dart';
import 'package:vaganza/view/detail_play.dart';
import 'package:vaganza/view/detail_rating.dart';

class Playing extends StatelessWidget {
  const Playing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Image.asset('images/logo.png', width: 180, height: 50),
        ),
        backgroundColor: const Color(0xFFFFFFFF),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "RATING TERTINGGI",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: "fonts/RobotoCondensed-Bold.ttf",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 200.0,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final RatingPlace rating = ratingPlaceList[index];
                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DetailRating(place: rating),
                                ),
                              );
                            },
                            child: Column(
                              children: <Widget>[
                                ClipRRect(
                                  child: Card(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        ClipRRect(
                                          child: Image.asset(rating.imageAsset,
                                              width: 145, height: 165),
                                          borderRadius:
                                              BorderRadius.circular(25),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                rating.name,
                                                style: const TextStyle(
                                                    fontSize: 10.0,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  borderRadius: BorderRadius.circular(25),
                                ),
                              ],
                            ),
                          );
                        },
                        itemCount: ratingPlaceList.length,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.only(left: 16),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "SEDANG TAYANG",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "fonts/RobotoCondensed-Bold.ttf",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.1),
              ),
              itemCount: playPlaceList.length,
              itemBuilder: (context, index) {
                PlayPlace place = playPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPlay(place: place),
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: ClipRRect(
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            ClipRRect(
                              child: Image.asset(
                                place.imageAsset,
                                width: 175,
                                height: 250,
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                              ),
                              child: Text(
                                place.name,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily:
                                        "fonts/RobotoCondensed-Bold.ttf",
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
