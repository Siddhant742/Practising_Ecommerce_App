import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';

class SlidingBox extends StatelessWidget {
  const SlidingBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: size.height * 0.25,
        child:Swiper(
          autoplay: true,
          itemCount: 3,
          pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(
              activeColor: Color(0xFFA4EBEE),
            ),
          ),
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
                  gradient: LinearGradient(colors: [
                    Color(0xFF861B24),
                    Color(0xFF421B86)
                  ])
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Buy \nNow',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        color: Color(0xFFFFFFFF)
                    ),),
                  Image.network('https://i.ibb.co/vwB46Yq/shoes.png',
                    fit: BoxFit.fitHeight,
                    height: double.infinity,),
                ],
              ),
            );
          },

        )
    );
  }
}
