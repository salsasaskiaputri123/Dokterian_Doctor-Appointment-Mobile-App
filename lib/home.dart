import 'package:dokterian/schedule.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Hi James',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Image.asset(
                      'assets/images/Frame.png',
                      width: 82.57,
                      height: 74.89,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              width: 327,
              height: 138,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Image.asset(
                            'assets/images/foto1.png',
                            width: 48,
                            height: 48,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Imran Syahir',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'General Doctor',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 0.0,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: Colors.white,
                          size: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Sunday, 12 June',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(width: 45),
                        Icon(
                          Icons.access_time,
                          color: Colors.white,
                          size: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '11:00 - 12:00 AM',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 20,
              top: 20,
            ),
            child: Container(
              width: 327,
              height: 56,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/search.png',
                      color: Colors.grey,
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Search doctor or health issue',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemExtent: 90,
              itemBuilder: (context, index) {
                List<String> imagePaths = [
                  'assets/images/sun.png',
                  'assets/images/profile.png',
                  'assets/images/link.png',
                  'assets/images/hospital.png',
                ];

                List<String> cardTexts = [
                  'Covid 19',
                  'Doctor',
                  'Medicine',
                  'Hospital',
                ];

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        color: Colors.grey.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90),
                        ),
                        elevation: 2,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.transparent,
                          child: Image.asset(
                            imagePaths[index],
                            width: 24,
                            height: 24,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        cardTexts[index],
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Near Doctor',
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 15),
            child: Container(
              width: 327,
              height: 138,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0),
                          child: Image.asset(
                            'assets/images/foto2.png',
                            width: 48,
                            height: 48,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Joseph Brostito',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Dental Specialist',
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey,
                              ),
                              Text(
                                '1.2 KM',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey.shade200,
                    thickness: 0.0,
                    indent: 20.0,
                    endIndent: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.orange,
                          size: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '4,8 (120 Reviews)',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.orange,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(width: 45),
                        Icon(
                          Icons.access_time,
                          color: Colors.blue,
                          size: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Open at 17.00',
                            style: TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.blue,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(),
          Schedule(),
        ],
      ),
      bottomNavigationBar: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
        child: GNav(
          haptic: true,
          tabBorderRadius: 12,
          curve: Curves.easeOutExpo,
          duration: Duration(milliseconds: 20),
          gap: 8,
          color: Colors.grey[800],
          activeColor: Colors.blue.shade500,
          iconSize: 24,
          tabBackgroundColor: Colors.blue.shade100,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          tabs: [
            GButton(
              icon: Icons.home_filled,
              text: 'Home',
            ),
            GButton(
              icon: Icons.calendar_month,
              text: ' Calender',
            ),
            GButton(
              icon: Icons.message_outlined,
              text: 'Message',
            ),
            GButton(
              icon: Icons.person_outline,
              text: 'Profile',
            ),
          ],
          selectedIndex: _currentIndex,
          onTabChange: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
