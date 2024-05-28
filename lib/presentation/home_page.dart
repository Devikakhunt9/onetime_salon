import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List lisOfBarbers = [
    'Benson',
    'Aadhi',
    'Clint',
    'Jeffrey',
    'Benson'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            //header container
            Container(
              child: Stack(children: [
                Image.asset(
                  'assets/images/background_homepage.png',
                  fit: BoxFit.fill,
                  height: 255,
                  width: double.infinity, // Adjust width as needed
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // color: Colors.pink,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              // color: Colors.yellow,
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: Icon(
                                      Icons.menu,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  ),
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.filter_alt_rounded,
                                color: Colors.white,
                                size: 20,
                              ),
                            )
                          ]),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 80),
                        padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                        // color: Colors.green,
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              child: Icon(Icons.search_rounded),
                              // onTap: () {
                              // },
                            ),
                            fillColor: Colors.white,
                            hintText: "salon, services, barber",
                            hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Itim',
                              color: Colors.grey,
                            ),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        )),
                  ],
                )
              ]),
            ),

            //Main Container
            Container(
              child: Column(
                children: [
                  //choose ur barber
                  Container(
                      padding: EdgeInsets.only(
                          top: 8, bottom: 18, left: 8, right: 8),
                      color: Colors.indigo.shade900,
                      child: Column(
                        children: [
                          Container(
                            // color: Colors.pink,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Choose Your Barber',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  'View all',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 100,
                            color: Colors.yellow,
                            // child: ListView(
                            //   scrollDirection: Axis.horizontal,
                            //   children: [
                            //
                            //
                            //     Text('ImGES'),
                            //   ],
                            // ),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: lisOfBarbers.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  // color: Colors.green,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 18.0, top: 8),
                                        child: CircleAvatar(
                                          child: Image.asset(
                                            'assets/images/${lisOfBarbers[index]}.png',
                                            // fit: BoxFit.fill,
                                            // height: double.infinity,
                                          ),
                                          backgroundColor: Colors.grey.shade300,
                                          radius: 28,
                                        ),
                                      ),
                                      Text('${lisOfBarbers[index]}',style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      )),

                  Text('select a salon'),
                  Text('select a service'),
                  Text('Recommanded'),
                  Text('Luxury'),
                ],
              ),
            ),
            Text('Bottom NAvigation')
          ],
        ),
      ),
    );
  }
}
