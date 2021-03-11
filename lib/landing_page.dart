import 'package:flutter/material.dart';
import 'package:jaysonani_dev/Pages/about.dart';
import 'package:jaysonani_dev/Pages/contact.dart';
import 'package:jaysonani_dev/Pages/home.dart';
import 'package:jaysonani_dev/Pages/projects.dart';
import 'package:jaysonani_dev/Pages/technologies.dart';
import 'package:jaysonani_dev/Pages/work.dart';

PageController pageController = PageController(initialPage: 2);

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  var pages = [
    Home(),
    About(),
    Technologies(),
    Work(),
    Projects(),
    Contacts(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: pages.length,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "JAY SONANI",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    // height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    child: TabBar(
                      labelColor: Colors.black,
                      labelStyle: TextStyle(fontSize: 15, fontFamily: 'Lato'),
                      indicatorPadding: EdgeInsets.all(5.0),
                      onTap: (index) {
                        pageController.animateToPage(index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      controller: tabController,
                      tabs: [
                        Tab(
                          child: Text("Home"),
                        ),
                        Tab(
                          child: Text("About"),
                        ),
                        Tab(
                          child: Text("Technologies"),
                        ),
                        Tab(
                          child: Text("Work"),
                        ),
                        Tab(
                          child: Text("Projects"),
                        ),
                        Tab(
                          child: Text("Contact"),
                        ),
                        // MenuButton(
                        //   label: "Home",
                        //   id: 0,
                        // ),
                        // MenuButton(
                        //   label: "About",
                        //   id: 1,
                        // ),
                      ],
                    ),
                    // child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     MenuButton(
                    //       label: "Home",
                    //       id: 0,
                    //     ),
                    //     MenuButton(
                    //       label: "About",
                    //       id: 1,
                    //     ),
                    //     MenuButton(
                    //       label: "Technologies",
                    //       id: 2,
                    //     ),
                    //     MenuButton(
                    //       label: "Work",
                    //       id: 3,
                    //     ),
                    //     MenuButton(
                    //       label: "Projects",
                    //       id: 4,
                    //     ),
                    //     MenuButton(
                    //       label: "Contact",
                    //       id: 5,
                    //     ),
                    //     // MenuButton(
                    //     //   label: "Resume",
                    //     //   id: 6,
                    //     // ),
                    //   ],
                    // ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Scrollbar(
                controller: pageController,
                isAlwaysShown: true,
                thickness: 15.0,
                child: AnimatedContainer(
                  // decoration: BoxDecoration(color: Colors.lightBlueAccent[900]),
                  duration: Duration(milliseconds: 300),
                  child: PageView.builder(
                    onPageChanged: (index) {
                      tabController.animateTo(index);
                    },
                    itemCount: pages.length,
                    pageSnapping: false,
                    controller: pageController,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return pages[index];
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class MenuButton extends StatelessWidget {
//   final String label;
//   final int id;
//   MenuButton({this.label, this.id});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 120,
//       height: 50,
//       child: MaterialButton(
//         // style: ButtonStyle(
//         //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
//         //     (Set<MaterialState> states) {
//         //       if (states.contains(MaterialState.pressed))
//         //         return Theme.of(context).colorScheme.primary.withOpacity(0.5);
//         //       return Colors.white; // Use the component's default.
//         //     },
//         //   ),
//         // ),
//         onPressed: () {
//           pageController.animateToPage(id,
//               duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
//         },
//         child: Text(
//           label,
//           style: TextStyle(
//             fontSize: 15,
//             color: Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }
