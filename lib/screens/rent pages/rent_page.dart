import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../widgets/single_product.dart';

class RentPage extends StatefulWidget {
  const RentPage({super.key});

  @override
  State<RentPage> createState() => _RentPageState();
}

class _RentPageState extends State<RentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF7D613B),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(0.5),
          child: Container(
            color: Color(0x809E9E9E),
            height: 0.5,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 14,),
              Container(
                padding: EdgeInsets.fromLTRB(10, 17, 10, 0),
                width: 260,
                height: 35,
                decoration: ShapeDecoration(
                  color: Color(0x4DDED0B7),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: TextField(
                  cursorColor: Color(0xFF644B30),
                  //textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    //suffixIcon: IconButton(
                      //onPressed: () {

                      //},
                      //icon: const Icon(Icons.clear_rounded),
                    //),
                    hintText: 'Search on Rentara',
                  ),
                  style: TextStyle(
                    color: Color(0xFF7D613B),
                  ),
                ),
              ),
              SizedBox(width: 14,),
              IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Color(0xFF7D613B),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          //color: Color(0xFFDDD3C0),
          child: ListView(
            children: [
              ListTile(
                title: Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Icon(
                  Icons.close_rounded,
                ),

              ),
              ListTile(
                title: Text(
                  "All Items",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins",
                  ),
                ),
                //onTap: () {
                //Navigator.of(context).push(
                //MaterialPageRoute(builder: (context)=> )
                //),
                //},
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Color(0xFF4B3B24),
                  colorScheme: ColorScheme.light(
                    primary: Color(0xFF91836E),
                  ),
                ),
                child: ExpansionTile(
                  textColor: Color(0xFF4B3B24),
                  title: Text(
                    "Baju Adat Provinsi",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                    ),
                  ),
                  children: [
                    ExpansionTile(
                      textColor: Color(0xFF4B3B24),
                      title: Text(
                        "Kalimantan",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Kalimantan Timur",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Kalimantan Selatan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Kalimantan Barat",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Kalimantan Tengah",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      textColor: Color(0xFF4B3B24),
                      title: Text(
                        "Sumatera",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Aceh",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sumatera Utara",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sumatera Barat",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Riau",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Kepulauan Riau",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Jambi",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Bengkulu",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sumatera Selatan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Bangka Belitung",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Lampung",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      textColor: Color(0xFF4B3B24),
                      title: Text(
                        "Sulawesi",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sulawesi Utara",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Gorontalo",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sulawesi Selatan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sulawesi Tengah",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sulawesi Tenggara",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Sulawesi Barat",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      textColor: Color(0xFF4B3B24),
                      title: Text(
                        "Jawa",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "DKI Jakarta",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Banten",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Jawa Barat",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Jawa Tengah",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "DI Yogyakarta",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Jawa Timur",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      textColor: Color(0xFF4B3B24),
                      title: Text(
                        "Nusa Tenggara",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Nusa Tenggara Barat",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Nusa Tenggara Timur",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      textColor: Color(0xFFDDD3C0),
                      title: Text(
                        "Bali",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Bali",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      textColor: Color(0xFF4B3B24),
                      title: Text(
                        "Maluku",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Maluku Utara",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Maluku",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      textColor: Color(0xFF4B3B24),
                      title: Text(
                        "Papua",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                        ),
                      ),
                      children: [
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Papua Barat",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Papua",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Papua Selatan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Papua Tengah",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Papua Tengah",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Papua Pegunungan",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                        ListTile(
                          tileColor: Color(0xFFDDD3C0),
                          title: Text(
                            "Papua Barat Daya",
                            style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  unselectedWidgetColor: Color(0xFF4B3B24),
                  colorScheme: ColorScheme.light(
                    primary: Color(0xFF91836E),
                  ),
                ),
                child: ExpansionTile(
                  textColor: Color(0xFF4B3B24),
                  title: Text(
                    "Kids Collection",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Poppins",
                    ),
                  ),
                  children: [
                    ListTile(
                      tileColor: Color(0xFFDDD3C0),
                      title: Text(
                        "Girls",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      ),
                    ),
                    ListTile(
                      tileColor: Color(0xFFDDD3C0),
                      title: Text(
                        "Boys",
                        style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Accessories",
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: "Poppins",
                  ),
                ),
                //onTap: () {
                //Navigator.of(context).push(
                //MaterialPageRoute(builder: (context)=> )
                //),
                //},
              ),
            ],
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 14),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 700,
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7,
                    crossAxisCount: 2,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      //SingleProduct(
                        //image: ,
                        //productname: ,
                        //productType: ,
                        //province: ,
                        //price: ,
                      //),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
