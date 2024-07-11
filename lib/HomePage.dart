import 'package:flutter/material.dart';
import 'package:studioghibli/CustomNavBar.dart';
import 'package:studioghibli/NewMovieWidget.dart';

import 'UpcomingWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: (Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'hello Angel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'What to Watch',
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      "images/taeyong.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: const Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.white54,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 5),
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "search",
                            hintStyle: TextStyle(color: Colors.white54)),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            const UpcomingWidget(),
            const SizedBox(
              height: 40,
            ),
            const NewMovieWidget(),
            const SizedBox(height: 15),
          ],
        ))),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
