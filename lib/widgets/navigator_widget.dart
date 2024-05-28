import 'package:flutter/material.dart';
import 'package:task2/presentation/home_page.dart';


class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});





  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {

  int selectedIndex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    super.initState();
    // widget.userId = 0;
   pages = [HomePage()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            items: [
              //Home ICON
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home_outlined,
                  size: 35,
                ),
                label: "Home",
                activeIcon: selectedIndex == 0
                    ? const Icon(
                      Icons.home_outlined,
                      size: 35,
                  color: Colors.indigo,
                    )
                    : Icon(
                  Icons.home_outlined,
                  size: 35,
                  color: Colors.black,
                ),
              ),

              //map
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.location_on_outlined,
                  size: 35,
                ),
                label: "map",
                activeIcon: selectedIndex == 1
                    ? const Icon(
                  Icons.location_on_outlined,
                  size: 35,
                  color: Colors.indigo,
                )
                    : Icon(
                  Icons.location_on_outlined,
                  size: 35,
                  color: Colors.black,
                ),
              ),

              //calender
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.calendar_month_outlined,
                  size: 35,
                ),
                label: "calender",
                activeIcon: selectedIndex == 2
                    ? const Icon(
                  Icons.calendar_month_outlined,
                  size: 35,
                  color: Colors.indigo,
                )
                    : Icon(
                  Icons.calendar_month_outlined,
                  size: 35,
                  color: Colors.black,
                ),
              ),


              //mail box
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.mail_outline_rounded,
                  size: 35,
                ),
                label: "mail",
                activeIcon: selectedIndex == 2
                    ? const Icon(
                  Icons.mail_outline_rounded,
                  size: 35,
                  color: Colors.indigo,
                )
                    : Icon(
                  Icons.mail_outline_rounded,
                  size: 35,
                  color: Colors.black,
                ),
              ),


              //my Profile
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.person_2_outlined,
                  size: 35,
                ),
                label: "profile",
                activeIcon: selectedIndex == 2
                    ? const Icon(
                  Icons.person_2_outlined,
                  size: 35,
                  color: Colors.indigo,
                )
                    : Icon(
                  Icons.person_2_outlined,
                  size: 35,
                  color: Colors.black,
                ),
              ),
            ],
            onTap: (index) {
              setState(
                    () {
                  selectedIndex = index;
                },
              );
            },
            backgroundColor: Colors.indigo.shade50,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: selectedIndex,
            selectedIconTheme: const IconThemeData(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
