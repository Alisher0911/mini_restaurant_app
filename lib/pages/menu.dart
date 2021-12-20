import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    final widthOfDevice = MediaQuery.of(context).size.width;
    final heightOfDevice = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: const Color(0xffE8EEF1),
            borderRadius: BorderRadius.circular(30)
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Column(
                children: [
                  SizedBox(height: heightOfDevice * 0.048),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Text("Red Square, 17",
                            style: TextStyle(
                                fontSize: 30),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_drop_down, color: Colors.black)
                          ),
                        ],
                      ),

                      Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.messenger_outline, color: Colors.black, size: 30,)
                            ),
                            ClipOval(
                              child: Image.asset(
                                "assets/avatar.jpeg",
                                height: 35,
                                width: 35,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                      ),
                    ],
                  ),


                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Entrance 3, intercom 15, apartment 15, floor 5",
                        style: TextStyle(
                            fontSize: 13, color: Colors.black.withOpacity(0.5))
                    ),
                  ),

                ],
              ),
            ),

            SizedBox(height: heightOfDevice * 0.06),


            // Menu
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),

                  child: Column(
                    children: [

                      SizedBox(height: heightOfDevice * 0.036),

                      Row(
                        children: [
                          SizedBox(width: widthOfDevice * 0.048),

                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffE8EEF1),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.crop_square, color: Colors.red)
                            ),
                          ),

                          SizedBox(width: widthOfDevice * 0.012),

                          Container(
                            decoration: const BoxDecoration(
                              color: Color(0xffE8EEF1),
                            ),
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.list, color: Colors.black)
                            ),
                          ),

                          SizedBox(width: widthOfDevice * 0.036),

                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xffffe3ec),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.breakfast_dining, color: Colors.red,),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text('Breakfast', style: TextStyle(color: Colors.red),)
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: widthOfDevice * 0.036),

                          Container(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            decoration: BoxDecoration(
                                color: const Color(0xffE8EEF1),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Row(
                              children: [
                                const Icon(Icons.emoji_food_beverage_rounded, color: Colors.black,),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text('Noodles', style: TextStyle(color: Colors.black),)
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),


                      SizedBox(height: heightOfDevice * 0.049),

                      //Items
                      Container(
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                        width: widthOfDevice - 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffE8EEF1),
                            borderRadius: BorderRadius.circular(40)
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                                height: widthOfDevice * 0.73,
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      left: -40,
                                      top: -20,
                                      child: Container(
                                        width: widthOfDevice * 0.73,
                                        height: widthOfDevice * 0.73,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fill,
                                            image: AssetImage('assets/pasta.png'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                            const Text('Pasta Al Pomodoro with Basil', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600)),

                            const SizedBox(height: 10),

                            Align(
                              alignment: Alignment.centerLeft,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/description');
                                  },
                                  child: const Text(
                                    '\$6.30', style: TextStyle(fontSize: 18)
                                  ),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.redAccent),
                                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20),
                                          )
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: heightOfDevice * 0.085,
        child: const Center(
          child: Text('30 min', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 30,
                offset: const Offset(0, 3)
            ),
          ],
        ),
      ),
    );
  }

}