import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  const Description({Key? key}) : super(key: key);

  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int _quantity = 1;
  double _price = 6.30;
  String _priceString = '6.30';

  void _incrementQuantity() {
    setState(() {
      _quantity++;
      _price = 6.30 * _quantity;
      _priceString = _price.toStringAsFixed(2);
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (_quantity > 1) {
        _quantity--;
        _price = 6.30 * _quantity;
        _priceString = _price.toStringAsFixed(2);
      }
    });
  }

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
            SizedBox(height: heightOfDevice * 0.048),

            const Center(
                child: Text('Pasta', style: TextStyle(fontSize: 30))
            ),

            SizedBox(height: heightOfDevice * 0.018),

            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.7)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3)
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 3,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3)
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: heightOfDevice * 0.037),



            Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                  ),

                  child: Column(
                    children: [
                      SizedBox(height: heightOfDevice * 0.036),

                      Center(
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

                      Column(
                        children: [
                          Row(
                            children: const [
                              Icon(Icons.access_time, color: Colors.black),
                              SizedBox(width: 5),
                              Text('+10 min')
                            ],
                          ),

                          SizedBox(height: heightOfDevice * 0.012),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                  flex: 5,
                                  child: Text('Pasta Al Pomodoro with Basil', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800))
                              ),
                              Expanded(
                                flex: 4,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                        onPressed: _decrementQuantity,
                                        icon: const Icon(Icons.remove, color: Colors.black)
                                    ),

                                    Container(
                                      width: 30,
                                      height: 30,
                                      decoration: const BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle
                                      ),
                                      child: Center(
                                        child: Text('$_quantity', style: const TextStyle(color: Colors.white, fontSize: 16)),
                                      ),
                                    ),

                                    IconButton(
                                        onPressed: _incrementQuantity,
                                        icon: const Icon(Icons.add, color: Colors.black)
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: heightOfDevice * 0.024),

                      Material(
                        elevation: 4.0,
                        color: const Color(0xffE8EEF1),
                        borderRadius: BorderRadius.circular(30),
                        child: Wrap(
                          direction: Axis.horizontal,
                          children:[
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              width: MediaQuery.of(context).size.width / 6 + 5,
                              child: Column(
                                children: [
                                  const Text('320', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                                  Text('gram', style: TextStyle(color: Colors.grey.withOpacity(0.7)))
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              width: MediaQuery.of(context).size.width / 6 + 5,
                              child: Column(
                                children: [
                                  const Text('740', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                                  Text('ккал', style: TextStyle(color: Colors.grey.withOpacity(0.7)))
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              width: MediaQuery.of(context).size.width / 6 + 5,
                              child: Column(
                                children: [
                                  const Text('10', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                                  Text('белки', style: TextStyle(color: Colors.grey.withOpacity(0.7)))
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              width: MediaQuery.of(context).size.width / 6 + 5,
                              child: Column(
                                children: [
                                  const Text('10', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                                  Text('жиры', style: TextStyle(color: Colors.grey.withOpacity(0.7)))
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              width: MediaQuery.of(context).size.width / 6 + 5,
                              child: Column(
                                children: [
                                  const Text('155', style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)),
                                  Text('углеводы', style: TextStyle(color: Colors.grey.withOpacity(0.7)))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: heightOfDevice * 0.024),

                      const Text('Pasta, extra virgin olive oil, fresh basil,'
                          'tomatoes, garlic, black pepper, mixed dry '
                          'herbs, rock sait, parmigiano reggiano',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.grey))
                    ],
                  ),
                )
            )
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: heightOfDevice * 0.085,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_bag_outlined, color: Colors.black),
            const SizedBox(width: 5),
            Text('40 min, \$$_priceString', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          ],
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