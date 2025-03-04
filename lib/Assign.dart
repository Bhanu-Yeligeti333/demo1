import 'package:flutter/material.dart';

class Just extends StatefulWidget {
  const Just({super.key});

  @override
  State<Just> createState() => _JustState();
}

class _JustState extends State<Just> {
  bool showGrid = false;
  bool mob=false;
  bool a=false;
  bool b=false;
  List<bool> isFavoriteList=[];
  List<String> images=["assets/images/cofee.jpg",
    "assets/images/corns.jpg" ,"assets/images/oranges.jpg","assets/images/tomato.jpg","assets/images/jam.jpg","assets/images/dettol.jpg"];
  List<String> labels=["cofee","Cornflakes","Oranges","Tamatoes","Jam","dettol"];
  List<String> cost=["₹200/-","₹450/-","₹600/-","₹250/-","₹500/-","₹900/-"];
  // List
  @override
  void initState() {
    super.initState();
    isFavoriteList = List.generate(images.length, (index) => false); // Initialize all as false
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("E-Commerce ")),
            backgroundColor: Colors.pinkAccent,
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Icon(Icons.shopping_cart),
              ),
            ],
          ),
          drawer: Drawer(
            backgroundColor: Colors.orange,
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person), // Icon on the left
                  title: Text("John Doe"), // Main text
                  subtitle: Text("Flutter Developer"), // Optional smaller text
                  trailing: Icon(Icons.arrow_forward), // Icon on the right
                  onTap: () {
                    print("Tapped!");
                  },

                ),
                SizedBox(height: 10,),
                Container(
                  width: 150,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(image: AssetImage("assets/images/profile.png"),fit: BoxFit.cover)
                  ),
                ),
SizedBox(height: 10,),

              ],
            ),
          ),

          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            // Adjust corner radius
                          ),
                        ),
                        ),
                        onPressed: () {
                          setState(() {   // ✅ Updating state triggers rebuild
                            showGrid = !showGrid;
                            mob = false;
                          });
                        },
                        child: Text("groceries"),
                      ),
                      SizedBox(width: 14,),
                      ElevatedButton(
                        style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            // Adjust corner radius
                          ),
                        ),
                        ),
                        onPressed: () {
                          setState(() {   // ✅ Updating state triggers rebuild
                            mob= !mob;
                            showGrid=false;
                          });
                        },
                        child: Text("Mobiles"),
                      ),
                    ],
                  ),

                  // ✅ Show Grid only when `showGrid` is true
                  if (showGrid)
                    SingleChildScrollView(
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        child: GridView.builder(

                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [

                                Container(
                                  width: 300,
                                  height: 300,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(10),

                                  ),
                                  margin: EdgeInsets.all(5),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 189),
                                        child: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isFavoriteList[index] = !isFavoriteList[index]; // Toggle value
                                            });
                                          },
                                          icon: Icon(
                                            isFavoriteList[index]? Icons.favorite : Icons.favorite_border,
                                            color: isFavoriteList[index]? Colors.red : null, // Change color when active
                                          ),
                                        ),
                                      ),


                                      Container(
                                        width: 150,
                                        height: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover),
                                          borderRadius: BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.red.withOpacity(0.5), // Shadow color with transparency
                                              spreadRadius: 2, // How much the shadow spreads
                                              blurRadius: 10, // How soft the shadow looks
                                              offset: Offset(4, 4), // Position of shadow (X, Y)
                                            ),
                                          ],
                                        ),


                                      ),
                                      SizedBox(height: 10,),
                                      Text(labels[index]),
                                      Text(cost[index]),


                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  SizedBox(height: 10,),
                  if(mob)
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 250,
                                  height: 250,
                                  decoration:  BoxDecoration(
                                    color:  Colors.red.withOpacity(0.1),

                                  ),
                                  child:Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover),
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.red.withOpacity(0.5), // Shadow color with transparency
                                                  spreadRadius: 2, // How much the shadow spreads
                                                  blurRadius: 10, // How soft the shadow looks
                                                  offset: Offset(4, 4), // Position of shadow (X, Y)
                                                ),
                                              ],
                                            ),


                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              );
                            },),
                        ),

                        SizedBox(height: 10,),
                        Container(
                          // padding: EdgeInsets.only(right: 20),
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                    width: 250,
                                    height: 250,
                                    decoration:  BoxDecoration(
                                      color:  Colors.red.withOpacity(0.1),

                                    ),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover),
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.red.withOpacity(0.5), // Shadow color with transparency
                                                  spreadRadius: 2, // How much the shadow spreads
                                                  blurRadius: 10, // How soft the shadow looks
                                                  offset: Offset(4, 4), // Position of shadow (X, Y)
                                                ),
                                              ],
                                            ),


                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              );
                            },),
                        ),
                        SizedBox(height: 3,),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.3,
                          child: ListView.builder(
                            itemCount: 6,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 250,
                                  height: 250,
                                  decoration:  BoxDecoration(
                                    color:  Colors.red.withOpacity(0.1),

                                  ),
                                  child:Column(
                                    children: [
                                      Center(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 8.0),
                                          child: Container(
                                            width: 150,
                                            height: 150,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(images[index]),fit: BoxFit.cover),
                                              borderRadius: BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.red.withOpacity(0.5), // Shadow color with transparency
                                                  spreadRadius: 2, // How much the shadow spreads
                                                  blurRadius: 10, // How soft the shadow looks
                                                  offset: Offset(4, 4), // Position of shadow (X, Y)
                                                ),
                                              ],
                                            ),


                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              );
                            },),
                        ),
                      ],
                    )



                ],
              ),
            ),
          )
      ),
    );


  }
}
