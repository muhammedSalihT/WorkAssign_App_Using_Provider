import 'package:flutter/material.dart';
import 'package:project_mypcot/constends/sized_box.dart';
import 'package:project_mypcot/constends/text_style.dart';
import 'package:project_mypcot/screens/home/providers/homescreen_controller.dart';
import 'package:project_mypcot/widgets/bottom_order_banner.dart';
import 'package:project_mypcot/widgets/custom_profile_circle_image.dart';
import 'package:project_mypcot/widgets/date_banner_widget.dart';
import 'package:project_mypcot/widgets/horizontal_date_view.dart';
import 'package:project_mypcot/widgets/navbar_widget.dart';
import 'package:project_mypcot/widgets/order_banner_widget.dart';
import 'package:project_mypcot/widgets/refracted_svgicon_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final homeScreenProvider = context.read<HomeScreenProvider>();
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const RefractedSvgIconWidget(
                      svgImage: "assets/menubar.svg", iconSize: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      RefractedSvgIconWidget(
                          svgImage: "assets/fav.svg", iconSize: 35),
                      normalBox,
                      RefractedSvgIconWidget(
                          svgImage: "assets/notification.svg", iconSize: 30),
                      normalBox,
                      CustomProfileImageWidget(
                          radius: 25,
                          backGrdColor: Color(0xFFFFFFFF),
                          assetImage: "assets/images (1).jpeg")
                    ],
                  )
                ],
              ),
              sectionBox,
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 6),
                title: Row(
                  children: [
                    refractedText("Welcome,Mypcot",
                        const Color(0xff2c3d63).withOpacity(.7),
                        weight: FontWeight.bold),
                    refractedText(" !!", const Color(0xff2c3d63),
                        weight: FontWeight.bold)
                  ],
                ),
                subtitle: refractedText(" here is your dash board...",
                    const Color(0xff2c3d63).withOpacity(.5),
                    size: 15),
                trailing: const RefractedSvgIconWidget(
                    svgImage: "assets/searchIcon.svg", iconSize: 100),
              ),
              LimitedBox(
                maxHeight: size.height * .35,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return OrderBannerWidget(
                      index: index,
                    );
                  },
                ),
              ),
              sectionBox,
              const DateBannerWidget(),
              SizedBox(
                width: size.width,
                height: 80,
                child: ListView.builder(
                  controller: homeScreenProvider.scrollController,
                  scrollDirection: Axis.horizontal,
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: homeScreenProvider.currentMonthList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return HorizontalDateView(
                      index: index,
                    );
                  },
                ),
              ),
              sectionBox,
              const BottomOrderBanner()
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 4.0,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
