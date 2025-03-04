import 'package:flutter/material.dart';

class BottomNavExample extends StatefulWidget {
  @override
  _BottomNavExampleState createState() => _BottomNavExampleState();
}

class _BottomNavExampleState extends State<BottomNavExample> {
  int _selectedIndex = 0;

  // List of pages
  final List<Widget> _pages = [
    StatusPage(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
        title: Center(child: Text("Charge",style:  TextStyle(color: Colors.white),)),
        actions: [  Icon(Icons.menu,color: Colors.white,)],
      ),
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Person',
          ),
        ],
      ),
    );
  }
}



class StatusPage extends StatefulWidget {
  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  bool switched = false;
 // Non-nullable boolean
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 500,
                  height: 300,
                  decoration:  BoxDecoration(
                    color: Colors.black,
                    border:Border.all(width: 4,color: Colors.greenAccent),
                    shape: BoxShape.circle,


                  ),
                ),
                Positioned(
                  top: 30,
                  left: 50,
                  bottom: 30,

                  child: Container(
                    width: 400,
                    height: 200,
                    decoration:  BoxDecoration(
                        color: Colors.greenAccent,
                        border:Border.all(width: 1,color: Colors.greenAccent),
                        shape: BoxShape.circle
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 150,
                  bottom: 30,

                  child: Container(
                    width: 200,
                    height: 150,
                    decoration:  BoxDecoration(
                        color: Colors.black,
                        border:Border.all(width: 1,color: Colors.greenAccent),
                        shape: BoxShape.circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 84),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.energy_savings_leaf,color: Colors.white,),
                          SizedBox(height: 4,),
                          Text("250",style: TextStyle(fontSize: 16,color: Colors.white),),
                          SizedBox(height: 4,),
                          Text("km",style: TextStyle(fontSize: 16,color: Colors.white),),
                          SizedBox(height: 4,)

                        ],
                      ),
                    ),
                  ),
                ),



              ],
            ),SizedBox(height: 4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 150,
                  height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.5), // Shadow color with opacity
                        offset: Offset(2, 2), // Horizontal and vertical offset
                        blurRadius: 5, // Blur effect
                        spreadRadius: 1, // Spread radius
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("Battery",style: TextStyle( color: Colors.white),),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Stack(
                            children: [
                              Container(
                                width: 100,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.red.withOpacity(0.5), // Shadow color with opacity
                                      offset: Offset(2, 2), // Horizontal and vertical offset
                                      blurRadius: 5, // Blur effect
                                      spreadRadius: 1, // Spread radius
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                  child:Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      //borderRadius: BorderRadius.circula(10),
                                    ),
                                  ) ),
                              Positioned(
                                top: 50,
                                  child:Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: Column(

                                        children: [
                                          Text("70",style: TextStyle(color: Colors.white),),
                                          Text("%",style: TextStyle(color: Colors.white),)
                                        ],
                                      ),
                                    ),
                                  )
                              ),

                            ],
                          ),
                        )

                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5), // Shadow color with opacity
                            offset: Offset(2, 2), // Horizontal and vertical offset
                            blurRadius: 5, // Blur effect
                            spreadRadius: 1, // Spread radius
                          ),
                        ],

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Column(
                          crossAxisAlignment:  CrossAxisAlignment.start,
                          children: [
                            Text("Current",style: TextStyle(color: Colors.white),),
                            SizedBox(height: 4,),
                            Center(child: Text("- 40 +",style: TextStyle(color:Colors.white ,fontSize: 24),)),
                            Center(child: Text("A", style: TextStyle(color: Colors.white,fontSize: 24),)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withOpacity(0.5), // Shadow color with opacity
                            offset: Offset(2, 2), // Horizontal and vertical offset
                            blurRadius: 5, // Blur effect
                            spreadRadius: 1, // Spread radius
                          ),
                        ],

                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cable",style: TextStyle(color: Colors.white),),
                            Text("Locked",style: TextStyle(color:Colors.white ),),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Switch( value: switched,
                                  onChanged: (value) {

                                    setState(() {
                                      switched = value;
                                    });
                                  },),
                            )

                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )


          ],
        ),
      ) ,
    );
  }
}

class PersonPage extends StatefulWidget {
  @override
  State<PersonPage> createState() => _PersonPageState();
}

class _PersonPageState extends State<PersonPage> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Person Page'));
  }
}
class Bhanu extends StatefulWidget {
  const Bhanu({super.key});

  @override
  State<Bhanu> createState() => _BhanuState();
}

class _BhanuState extends State<Bhanu> {
  @override
  Widget build(BuildContext context) {
    return Text("helloi");
  }
}

