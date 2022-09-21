import 'package:flutter/material.dart';
import 'package:flutter_swiper_3/flutter_swiper_3.dart';

const Map<String, dynamic> defaultConfig = {
  'autoplay': false,
  'itemHeight': 424.0,
  'itemWidth': 750,
};

class PicSwiper extends StatelessWidget {
  final List<String> list;
  final Map<String, dynamic> config;

  const PicSwiper({this.list = const [], this.config = defaultConfig, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.width/config['itemWidth']*config['itemHeight'];

    return Container(
      height: height,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(list[index], fit: BoxFit.contain);
        },
        autoplay: config['autoplay'],
        itemCount: list.length,
        pagination: const SwiperPagination(),
      )
    );
  }
}