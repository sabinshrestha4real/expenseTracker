import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:starter/utils/colors.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: forDrawer(context),
      ),
      body: SafeArea(
        child: LayoutBuilder(
            // stream: null,
            builder: (context, BoxConstraints constraints) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          _scaffoldKey.currentState!.openDrawer();
                        },
                        icon: Icon(
                          Icons.sort,
                          color: Colors.white,
                        )),
                    Container(
                      height: 50,
                      width: 80,
                      child: GestureDetector(
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              AssetImage('assets/images/money.png'),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Total Amount',
                      style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'xxxxxxx',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Expenses',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'xxxxxxx',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Deposit',
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'xxxxxxx',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70.0),
                    topRight: Radius.circular(70.0)),
                child: Container(
                  // padding: EdgeInsets.only(top: 10.0),
                  color: Colors.white,
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 50,
                    crossAxisCount: 2,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            // elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            primary: backgroundColor),
                        onPressed: () {
                          // Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          "Add Expenses",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            // elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            primary: backgroundColor),
                        onPressed: () {
                          // Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          "Add Deposit",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            // elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            primary: backgroundColor),
                        onPressed: () {
                          // Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          "View Chart",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shadowColor: Colors.transparent,
                            // elevation: 0.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0)),
                            primary: backgroundColor),
                        onPressed: () {
                          // Navigator.pushNamed(context, '/home');
                        },
                        child: Text(
                          "Modify",
                          style: GoogleFonts.poppins(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ))
            ],
          );
        }),
      ),
    );
  }

  var val;

  bool _value = false;

  ListView forDrawer(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Text('Hi There'),
        ),
        ListTile(
          title: const Text('Langauage'),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext contexts) {
                  return AlertDialog(
                    title: Text('Choose langauage',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        )),
                    content: Container(
                      height: MediaQuery.of(context).size.height / 4.5,
                      child: ListView(
                        shrinkWrap: true,
                        children: [
                          ListTile(
                            title: Text('Nepali'),
                            leading: Radio(
                              value: 1,
                              groupValue: val,
                              onChanged: (value) {
                                setState(() {
                                  val = value;
                                });
                                Navigator.pop(contexts);
                                // val = sd;
                              },
                            ),
                          ),
                          ListTile(
                            title: Text('English'),
                            leading: Radio(
                              value: 2,
                              groupValue: val,
                              onChanged: (value) {
                                setState(() {
                                  val = value;
                                });
                                Navigator.pop(contexts);
                                // val = sd;
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
        ListTile(
          title: const Text('Others'),
          onTap: () {},
        ),
      ],
    );
  }
}
