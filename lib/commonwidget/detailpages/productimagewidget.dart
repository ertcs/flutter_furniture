import 'package:flutter/material.dart';

class ProductImageWidget extends StatelessWidget {
  final String image;
  final String heroTag;

  ProductImageWidget(this.image, this.heroTag);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Hero(
            tag: heroTag,
            child: Image.asset(
              image,
              width: 230,
              height: 380,
            )),
      ),
    );
  }
}
