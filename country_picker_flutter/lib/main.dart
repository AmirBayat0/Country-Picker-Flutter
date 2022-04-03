import 'package:flutter/material.dart';
import 'package:country_list_pick/country_list_pick.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country Picker',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);





/////////////////////////////////////
//@CodeWithFlexz on Instagram
//
//AmirBayat0 on Github
//Programming with Flexz on Youtube
/////////////////////////////////////

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 2,
          title: Column(
            children: [
              Text("Country Picker"),
              Text(
                "@CodeWithFlexz",
                style: TextStyle(
                  color: Colors.white70,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromARGB(255, 67, 115, 246),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text("Select Your Country",
                    style: TextStyle(
                        color: Color.fromARGB(255, 89, 89, 89), fontSize: 18)),
              ),
              Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 234, 234, 234),
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.black,
                      width: 1.6,
                    )),
                child: CountryListPick(
                  appBar: PreferredSize(
                      child: AppBar(
                        title: Text("Select Country"),
                        backgroundColor: Color.fromARGB(255, 67, 115, 246),
                      ),
                      preferredSize: Size.fromHeight(60)),
                  theme: CountryTheme(
                    showEnglishName: true,
                    isDownIcon: true,
                    isShowFlag: true,
                    isShowCode: true,
                    // isShowTitle: true
                  ),
                  initialSelection: '+98',
                  useSafeArea: true,
                  useUiOverlay: true,
                  onChanged: (val) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
