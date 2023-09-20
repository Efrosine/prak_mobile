import 'package:flutter/material.dart%20';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }

  _appBar() {
    return AppBar(
      title: Text('Praktikum 3'),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
      ],
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            child: Image.asset(
              'image/image.jpg',
            ),
          ),
          Text(
            'Ini Judul',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text('5.0⭐⭐⭐⭐⭐'),
          Text('wikipedia'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.av_timer_outlined),
                  Text('Weekend'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.bookmark_add_outlined),
                  Text('Bookmark'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  Text('Share'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed hendrerit quam nec justo pretium, at bibendum augue tristique. Vivamus nec sapien vel nisi bibendum fermentum. Integer ac sapien sed elit cursus scelerisque. Fusce id augue eget urna tincidunt commodo. Curabitur tincidunt quam eget ante lacinia, a convallis quam bibendum. Nulla facilisi. Aliquam id ante urna. Integer id justo id neque dapibus bibendum. Sed non efficitur elit, at posuere ligula. Sed auctor turpis vitae eros fermentum hendrerit. Sed at est id arcu scelerisque consectetur. Donec id justo ut libero egestas bibendum. Sed dictum congue tortor, non tristique nisi tincidunt id. Suspendisse potenti.',
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
