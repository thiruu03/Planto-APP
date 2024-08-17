import 'package:flutter/material.dart';
import 'package:planto/pages/intro-pages/intropage.dart';
import 'package:planto/pages/intro-pages/thirdintro.dart';

class Secondintro extends StatelessWidget {
  const Secondintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const Intropage(),
              ),
            );
          },
          icon: const Icon(Icons.navigate_before_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/images/image2.png'),
                height: 400,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 20,right: 20),
              child: Text(
                'Discover Your type of plant',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 101, 38),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding:  EdgeInsets.only(left: 20,right: 20),
              child: Text(
                "Tips and tricks to grow your plant healthy & get all informations about your plants",
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 49, 137, 52),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  backgroundColor: Theme.of(context).primaryColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Thirdintro(),
                    ),
                  );
                },
                label: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
