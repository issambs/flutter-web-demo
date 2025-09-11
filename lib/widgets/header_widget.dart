import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://cuponline.se/web/site/cuponline/images/bg_Top.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Image.network(
          'https://cuponline.se/web/site/cuponline/images/logo.gif',
          height: 60,
        ),
      ),
    );
  }
}
