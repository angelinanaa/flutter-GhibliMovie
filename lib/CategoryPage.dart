import 'package:flutter/material.dart';
import 'package:studioghibli/CustomNavBar.dart';
class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text("Discover",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                          ),)
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    for (int i=1; i<12; i++)
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image.asset("images/totoro.jpg",
                            height: 70,
                            width: 90,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10,),
                          const Text("genre",
                          style: TextStyle(
                              fontSize: 22,
                            color: Colors.white,
                          ),
                          ),
                          const Spacer(),
                          const Icon(Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
                ),
              ],
            ),
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

