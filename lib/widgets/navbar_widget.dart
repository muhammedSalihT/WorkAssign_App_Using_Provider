import 'package:flutter/material.dart';
import 'package:project_mypcot/widgets/refracted_bottom_nav.dart';

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const CircularNotchedRectangle(),
      child: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.grey),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const <Widget>[
              RefractedBottomNavIconWidget(
                  svgImage: "assets/home.svg", title: "Home"),
              RefractedBottomNavIconWidget(
                  svgImage: "assets/customers.svg", title: "Customers"),
              SizedBox(
                width: 50.0,
              ),
              RefractedBottomNavIconWidget(
                  svgImage: "assets/katak.svg", title: "Khata"),
              RefractedBottomNavIconWidget(
                  svgImage: "assets/orders.svg", title: "Orders"),
            ],
          ),
        ),
      ),
    );
  }
}
