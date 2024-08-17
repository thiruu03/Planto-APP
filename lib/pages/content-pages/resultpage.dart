import 'package:flutter/material.dart';
import 'package:planto/pages/content-pages/imagescreen.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const ImageScreen(),
              ),
            );
          },
          icon: const Icon(Icons.navigate_before_outlined),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage('assets/images/result-image.png'),
                height: 300,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(left: 20,right: 20),
                child: Text(
                  "As per the image you've provided , it closely matches with the 'RUST' disease",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "See Remedies",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    "Ask Community",
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton.icon(
              onPressed: () {},
              label: const Text(
                "About us",
                style: TextStyle(fontSize: 17),
              ),
              icon: const Icon(Icons.info),
            )
          ],
        ),
      ),
    );
  }
}
