import 'package:flutter/material.dart';
import 'package:planto/pages/auth/createaccount.dart';
import 'package:planto/pages/intro-pages/secondintro.dart';

class Thirdintro extends StatelessWidget {
  const Thirdintro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const Secondintro(),
              ),
            );
          },
          icon: const Icon(Icons.navigate_before_outlined),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage(
                  'assets/images/volunteers.png',
                ),
                height: 380,

              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Connect with other',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 101, 38),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            const Center(
              child: Text(
                'Plant lovers',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 35, 101, 38),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           const  Center(
              child: Text(
                "Join the community",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 49, 137, 52),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
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
                      builder: (context) => const CreateAccount(),
                    ),
                  );
                },
                label: const Text('Create account'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
