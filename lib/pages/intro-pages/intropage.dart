import 'package:flutter/material.dart';
import 'package:planto/pages/intro-pages/secondintro.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 227, 227, 227),
      body: Stack(
        children: [
          //Background-image-of-Intropage
          Image.asset(
            'assets/images/image-background.jpg',
            fit: BoxFit.cover,
            height: 1000,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, bottom: 3),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  "We're glad that you are here !",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const Spacer(),
              //To place the button at the bottom of the screen
              Container(
                padding: const EdgeInsets.all(20),
                alignment: Alignment.bottomRight,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    backgroundColor: Theme.of(context).primaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const Secondintro(),
                      ),
                    );
                  },
                  label: const Text('Get started'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
