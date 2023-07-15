
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFA4EBEE),
        centerTitle: true,
        title: Text('Home'),
      ),
      body: SafeArea(child: ListView(
        children: [
          SizedBox(
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
          ),
        ],
      )),
    );
  }
}
