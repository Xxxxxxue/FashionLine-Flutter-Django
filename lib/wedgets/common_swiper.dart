import 'package:fashionline/models/imagen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';


// 图片宽 750px 高 424px
// 设置图片的宽高(为了代码易于阅读)
var imageHeight = 750.0;
var imageWidth = 424.0;

class CommonSwiper extends StatelessWidget {
  final List<Imagen>? images;
  const CommonSwiper({Key? key, this.images}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / imageHeight * imageWidth;
    return Container(
      height: height,
      child: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images?[index].imagen??'',
            fit: BoxFit.fill,
          );
        },
        autoplay: true,
        itemCount: images!.length,
        // scrollDirection: Axis.vertical,
        pagination: new SwiperPagination(alignment: Alignment.bottomCenter),
        control: new SwiperControl(),
      ),
    );
  }
}
