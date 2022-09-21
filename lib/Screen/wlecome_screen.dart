import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_2/helper/Style.dart';
import 'package:food_app_2/helper/app_color.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Welcome.png"),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {},
              child: Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColor.appWhite1,
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: AppColor.appBlack1)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 4),
                      child: Text(
                        "Skip",
                        style: FdStyle.sofia(
                            color: AppColor.appOrange1, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Welcome to",
              style: FdStyle.sofia(
                  color: AppColor.appBlack1,
                  fontSize: 44,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "FoodHub",
              style: FdStyle.sofia(
                  color: AppColor.appOrange1,
                  fontSize: 44,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(
                "Your favourite foods delivered fast at your door.",
                style: FdStyle.sofia(
                    color: AppColor.darkBlue,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            SvgPicture.asset(
              "assets/images/sign_in.svg",
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.appWhite1,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Group 17863.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Facebook",
                            style: FdStyle.sofia(
                                color: AppColor.appBlack1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: AppColor.appWhite1,
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 15,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Group 17967.png",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Google",
                            style: FdStyle.sofia(
                                color: AppColor.appBlack1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
