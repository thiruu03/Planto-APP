import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 218, 255, 220),
      child: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 49, 137, 52),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            margin: EdgeInsets.only(top: 20, bottom: 10),
            currentAccountPicture: Center(
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            accountName: Text("Kumaran"),
            accountEmail: Text("Thirukumaran678@gmail.com"),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 30),
            title: const Text("Home"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.settings, size: 30),
            title: const Text("Settings"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.connect_without_contact, size: 30),
            title: const Text("Contact us"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_outlined, size: 30),
            title: const Text("About"),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
