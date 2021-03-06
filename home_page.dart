import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top:70, left:30,right: 30),
        child: Column(
          children: [
            Row(
              children:  [
                Text(
                  "DriveIt",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Icon(Icons.arrow_back_ios,
                size: 20,
                  color: color.AppColor.homePageIcons),
                SizedBox(width: 10,),
                Icon(Icons.work_outlined,
                size: 20,
                color: color.AppColor.homePageIcons),
                SizedBox(width: 15,),
                Icon(Icons.arrow_forward_ios,
                    size: 20,
                    color: color.AppColor.homePageIcons),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text(
                  "Witaj,",
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700
                  ),
                ),
                Expanded(child: Container()),
                Text(
                  "Profil",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageDetail,
                  ),
                ),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_ios,
                size: 20,
                color:color.AppColor.homePageIcons)
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80)
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5,10),
                    blurRadius: 20,
                    color: color.AppColor.gradientSecond.withOpacity(0.2)
                  )
                ]
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, top: 25, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nast??pna podr????",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "Kliknij, by rozpocz????",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                    Text(
                      "Pami??taj o zapi??ciu pas??w",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white
                      ),
                    ),
                    SizedBox(height: 25,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.sports_motorsports, size: 20, color:Colors.white),

                            SizedBox(width: 10,),
                            Text(
                              "    ",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            boxShadow: [
                              BoxShadow(
                                color: color.AppColor.gradientFirst,
                                blurRadius: 10,
                                offset: Offset(4,8)
                              )
                            ]
                          ),
                          child: Icon(
                            Icons.play_circle_fill,
                            color: Colors.white, size: 60,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              height: 180,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(top:30),
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(
                          "beta.JPG"
                        ),
                        fit: BoxFit.fill
                      ),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          offset: Offset(8,10),
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                        ),
                        BoxShadow(
                          blurRadius: 10,
                          offset: Offset(-1,-5),
                          color: color.AppColor.gradientSecond.withOpacity(0.3),
                        ),
                      ]
                    ),
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 100,
                    margin: const EdgeInsets.only(left: 150, top: 50),
                    child: Column(
                      children: [
                        Text(
                          "Twoje trasy s?? imponuj??ce",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: color.AppColor.homePageDetail
                          ),
                        ),
                        SizedBox(height: 10,),
                        RichText(text: TextSpan(
                          text:"tak trzymaj, ",
                          style: TextStyle(
                            color: color.AppColor.homePagePlanColor,
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: "idzie ci ??wietnie!"
                            )
                          ]
                        ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "Skr??ty",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: color.AppColor.homePageTitle
                  ),
                )
              ],
            ),
            Expanded(child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, i){
                return Row(
                  children: [
                    Container(
                      width: 200,
                      height: 170,
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(
                            "stacja.png"
                          )
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(5,5),
                            color: color.AppColor.gradientSecond.withOpacity(0.1)
                          ),
                          BoxShadow(
                              blurRadius: 3,
                              offset: Offset(-5,-5),
                              color: color.AppColor.gradientSecond.withOpacity(0.1)
                          )
                        ]
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "         ",
                            style: TextStyle(
                              fontSize: 20,
                              color: color.AppColor.homePageDetail
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 170,
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage(
                                  "stacja.png"
                              )
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 3,
                                offset: Offset(5,5),
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                            ),
                            BoxShadow(
                                blurRadius: 3,
                                offset: Offset(-5,-5),
                                color: color.AppColor.gradientSecond.withOpacity(0.1)
                            )
                          ]
                      ),
                      child: Center(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "         ",
                            style: TextStyle(
                                fontSize: 20,
                                color: color.AppColor.homePageDetail
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
            }))
          ],
        ),
      ),
    );
  }
}
