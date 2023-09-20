import 'package:flutter/material.dart%20';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          radius: 74,
          backgroundColor: Colors.blue,
          child: CircleAvatar(radius: 70, backgroundImage: AssetImage('image/poto.png')),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 24),
            padding: EdgeInsets.all(12),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24), topRight: Radius.circular(24)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 15,
                  )
                ]),
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Nama"),
                  subtitle: Text("Fajar Triatmojo"),
                ),
                const ListTile(
                  leading: Icon(Icons.card_membership),
                  title: Text("NIM"),
                  subtitle: Text("220605110152"),
                ),
                const ListTile(
                  leading: Icon(Icons.class_outlined),
                  title: Text("Kelas"),
                  subtitle: Text("I"),
                ),
                Expanded(
                  child: Container(),
                ),
                const Icon(
                  Icons.cloud_download,
                  size: 32,
                  color: Colors.blue,
                ),
                const Text(
                  'Download CV',
                  style: TextStyle(color: Colors.blueGrey),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
