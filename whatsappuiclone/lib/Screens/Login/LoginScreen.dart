import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Screens/OTP/OTPScreen.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "Pakistan";
  List<String> countries = [
    "Pakistan",
    "India",
    "United States",
    "Canada",
    "Australia",
    "United Kingdom",
    "Germany",
    "France",
    "Italy",
    "Spain",
    "Brazil",
    "Mexico",
    "China",
    "Japan",
    "South Korea",
    "Russia",
    "South Africa",
    "Nigeria",
    "Egypt",
    "Turkey"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Uihelper.CustomText(
            text: 'Enter your phone number',
            height: 20,
            color: Color(0xff00a884),
            fontweight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
              child: Uihelper.CustomText(
                  text: 'Whatsapp will need to verify your phone',
                  height: 14,
                  color: Color(0xff5e5e5e))),
          SizedBox(
            height: 5,
          ),
          Uihelper.CustomText(
              text: 'number. Carrier charges may apply.', height: 14),
          SizedBox(
            height: 5,
          ),
          Uihelper.CustomText(
              text: 'What\'s my number?', height: 14, color: Color(0xff00a884)),
          SizedBox(
            height: 50,
          ),
          Padding(
              padding: EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00a884))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff00a884)))),
                  value: selectedCountry,
                  items: countries.map((String country) {
                    return DropdownMenuItem(
                      value: country,
                      child: Text(country.toString()),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedCountry = value as String;
                    });
                  })),
          SizedBox(
            height: 10,
          ),
          Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 50,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: '+92',
                          border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff00a884))),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff00a884))),
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff00a884)))),
                    )),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: 172,
                    child: TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Color(0xff00a884)))),
                    ))
              ])
        ],
      ),
      floatingActionButton: Uihelper.CustomButton(
          callback: () {
            login(phoneController.text.toString());
          },
          buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phoneNumber) {
    if (phoneNumber == "") {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Enter your number')));
    } else {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OTPScreen(phoneNumber: phoneNumber)));
    }
  }
}
