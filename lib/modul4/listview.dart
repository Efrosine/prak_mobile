import 'dart:ui';

import 'package:flutter/material.dart%20';
import 'package:prak_mobile/modul4/model.dart';
import 'package:prak_mobile/modul5/detail.dart';

class ShopingView extends StatelessWidget {
  const ShopingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('image/bg.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.white54,
          appBar: _appBar(),
          body: _body(),
        ),
      ],
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: Icon(
        Icons.arrow_back_ios_rounded,
      ),
      title: Text(
        'Shoping',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
    );
  }

  _body() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, index) => ListWidget(model: listData[index]),
      ),
    );
  }
}

class ListWidget extends StatelessWidget {
  final Model model;
  const ListWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsWidget(model: model),
            ));
      },
      child: Card(
          clipBehavior: Clip.antiAlias,
          margin: EdgeInsets.symmetric(vertical: 8),
          elevation: 2,
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 2.7,
                child: Image.asset(
                  model.url,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(model.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(model.subtitle),
                      // Expanded(child: Container()),
                      SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [ButtonCount(), Text('\$40')],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class ButtonCount extends StatelessWidget {
  const ButtonCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(8),
      ),
      child: Container(
        height: 30,
        color: Colors.amber,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                icon: Icon(
                  Icons.remove,
                  size: 14,
                )),
            Text('1'),
            IconButton(
                onPressed: () {},
                visualDensity: VisualDensity.compact,
                icon: Icon(
                  Icons.add,
                  size: 14,
                ))
          ],
        ),
      ),
    );
  }
}
