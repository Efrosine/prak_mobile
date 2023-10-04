import 'package:flutter/material.dart%20';
import 'package:prak_mobile/modul4/model.dart';

class DetailsWidget extends StatelessWidget {
  final Model model;
  const DetailsWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(context),
    );
  }

  _appBar() {
    return AppBar(
      // backgroundColor: Colors.transparent,
      // leading: Icon(
      //   Icons.arrow_back_ios_rounded,
      // ),
      title: Text(
        'Details',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }

  _body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4,
            margin: EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
            clipBehavior: Clip.antiAlias,
            child: Image.asset(
              model.url,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            model.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          SizedBox(
            height: 8,
          ),
          Text('Rating : 5.0 ⭐⭐⭐⭐⭐'),
          SizedBox(
            height: 8,
          ),
          Expanded(
              child: Text(
            '    ${model.desc}',
            textAlign: TextAlign.justify,
          ))
        ],
      ),
    );
  }
}
