import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned(
              top: 18,
              left: 16,
              right: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 // AppIcon(icon: Icons.arrow_back_ios),
                 // AppIcon(icon: Icons.dehaze_outlined)
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                  padding: EdgeInsets.only(left: 7, right:7, top: 20),
                  decoration: BoxDecoration(
                      color: Colors.greenAccent
                  ),
                  child:
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index){
                        return Container(
                          margin: EdgeInsets.only(left:20,right:20, bottom: 20),
                          child: Row(
                              children: [
                                //image section
                                Container(
                                  width:110,
                                  height:110,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color:Colors.white38,
                                      image: DecorationImage(
                                          fit:BoxFit.cover,
                                          image: AssetImage(
                                              "assets/D1.png"
                                          )
                                      )
                                  ),
                                ),
                                //text container
                                Expanded(
                                    child: Container(
                                      height:100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          bottomRight: Radius.circular(30),
                                        ),
                                        color: Colors.white,
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 10,right:10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            BigText(text: "Dr. Pooja Verma"),
                                            SizedBox(height: 5,),
                                            SmallText(text: "Interventional Cardiologist, Ghaziabad, India"),
                                            SizedBox(height: 5,),
                                            SmallText(text: "15 years of experience"),
                                          ],
                                        ),
                                      ),
                                    )
                                )
                              ]),
                        );
                      })
              ),
            ),
          ]
      ),
    );
  }
}

class SmallText extends StatelessWidget {
  final Color color;
  final String text;
  double size;
  double height;
  SmallText({
    Key key,
    this.color = const Color(0xFFccc7c5),
    this.text,
    this.height = 0,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: 'Roboto',
        fontSize: size,
        height: height,
      ),
    );
  }
}

class BigText extends StatelessWidget {
  Color color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText({Key key,this.color=const Color(0xFF332d2b),this.text,
    this.size=25,
    this.overflow=TextOverflow.ellipsis
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      style: TextStyle(
          fontFamily: 'roboto',
          color: color,
          fontSize: size==0?30:size,
          fontWeight: FontWeight.w400
      ),
    );
  }
}

class AppIcon {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final double size;
  const AppIcon({Key key,
    this.icon,
    this.iconColor = const Color(0xFF756d54),
    this.backgroundColor = const Color(0xFFfcf4e4),
    this.size = 40
  }) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            color: backgroundColor
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 56,
        ));
  }
}


