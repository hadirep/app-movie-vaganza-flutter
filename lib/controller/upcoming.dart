import 'package:flutter/material.dart';
import 'package:vaganza/model/upcoming_place.dart';
import 'package:vaganza/view/detail_upcoming.dart';

class Upcoming extends StatelessWidget {
  const Upcoming({Key? key}) : super(key: key);

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
                  "AKAN DATANG",
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: "fonts/RobotoCondensed-Bold.ttf",
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 5),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 1.1),
              ),
              itemCount: upcomingPlaceList.length,
              itemBuilder: (context, index) {
                UpcomingPlace place = upcomingPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailUpcoming(place: place),
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
