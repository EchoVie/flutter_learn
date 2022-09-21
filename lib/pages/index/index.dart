import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/page_content.dart';
import 'package:flutter_learn/widgets/pic_swiper.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State createState() {
    return IndexState();
  }
}

class IndexState extends State<Index> {
  IndexState() {}

  @override
  Widget build(BuildContext context) {
    return PageContent(
        title: '首页',
        child: Container(
          child: const PicSwiper(
            list: [
              'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tdgve1j30ku0bsn75.jpg',
              'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2whp87sj30ku0bstec.jpg',
              'http://ww3.sinaimg.cn/large/006y8mN6ly1g6e2tl1v3bj30ku0bs77z.jpg',
            ],
            config: {
              'autoplay': true,
              'itemHeight': 424.0,
              'itemWidth': 750,
            }
          ),
        ),
      );
  }
}
