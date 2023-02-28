import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class ListHomePage extends StatefulWidget {
  const ListHomePage({super.key});

  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {
  int currentNumber = 1;
  @override
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List Home Page'),
        backgroundColor: Colors.deepPurple,
        elevation: 0,
      ),
      body: Stack(
        children: [
          AnimationLimiter(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return AnimationConfiguration.staggeredList(
                  position: currentNumber,
                  delay: const Duration(
                    milliseconds: 500,
                  ),
                  child: SlideAnimation(
                    duration: const Duration(
                      milliseconds: 2500,
                    ),
                    curve: Curves.fastLinearToSlowEaseIn,
                    horizontalOffset: -300,
                    verticalOffset: 300,
                    child: Container(
                      color: Colors.deepPurpleAccent,
                      height: height / 10,
                      width: width * .9,
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: Center(
                        child: ListTile(
                          title: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Items $currentNumber'),
                              InkWell(
                                child: Icon(Icons.delete),
                                onTap: () {
                                 setState(() {
                                    currentNumber -= 1;
                                 });
                                },
                              ),
                            ],
                          ),
                          textColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                );
              },
              itemCount: currentNumber,
            ),
          ),
          Positioned(
            bottom: 25,
            right: 25,
            child: FloatingActionButton(
              child: const Icon(Icons.plus_one),
              onPressed: () {
                setState(() {
                  currentNumber += 1;
                  print(currentNumber);
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
