import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:starter/l10n/l10n.dart';
import 'package:starter/models/provider/translate.dart';
import 'package:starter/utils/colors.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                      AppLocalizations.of(context)!.totalAmount,
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
                          AppLocalizations.of(context)!.totalExpenses,
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
                          AppLocalizations.of(context)!.totalDeposit,
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
                          AppLocalizations.of(context)!.addExpenses,
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
                          AppLocalizations.of(context)!.addDeposit,
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
                          AppLocalizations.of(context)!.viewChart,
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
                          AppLocalizations.of(context)!.edit,
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
    final localProvider = Provider.of<Translate>(context, listen: false);
    // final local = localProvider.locale;
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Text(AppLocalizations.of(context)!.header),
        ),
        ListTile(
          title: Text(
            AppLocalizations.of(context)!.way,
          ),
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext contexts) {
                  return AlertDialog(
                    title: Text(AppLocalizations.of(context)!.chooseLanguage,
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        )),
                    content: Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: ListView(
                        shrinkWrap: true, // new line
                        // physics: NeverScrollableScrollPhysics(),
                        children: [
                          ListTile(
                            title: Text('English'),
                            leading: Radio(
                              value: "en",
                              groupValue: localProvider.changeValue,
                              onChanged: (value) {
                                // setState(() {
                                val = value.toString();
                                print(val);
                                // });
                                localProvider.setValue(val);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(forLanguage(val));
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/home', ModalRoute.withName('/home'));

                                // val = sd;
                                localProvider.setLocale(L10n.all[1]);
                              },
                            ),
                            // onTap: () {
                            //   localProvider.setLocale(L10n.all[1]);
                            // },
                          ),
                          ListTile(
                            title: Text('Nepali'),
                            leading: Radio(
                              value: "ne",
                              groupValue: localProvider.changeValue,
                              onChanged: (value) {
                                // setState(() {
                                val = value.toString();
                                print(val);
                                // });
                                localProvider.setLocale(L10n.all[0]);
                                localProvider.setValue(val);
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(forLanguage(val));
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/home', ModalRoute.withName('/home'));
                                // val = sd;
                              },
                            ),
                            // onTap: () {
                            //   localProvider.setLocale(L10n.all[0]);
                            // },
                          ),
                        ],
                      ),
                    ),
                  );
                });
          },
        ),
        ListTile(
          title: Text(AppLocalizations.of(context)!.others),
          onTap: () {},
        ),
      ],
    );
  }

  forLanguage(data) {
    final showsnackbar = SnackBar(
      content: data == 'en'
          ? Text('Language Changed to English')
          : Text('Language Changed to Nepali'),
      duration: Duration(seconds: 5),
    );

    return showsnackbar;
  }
}
