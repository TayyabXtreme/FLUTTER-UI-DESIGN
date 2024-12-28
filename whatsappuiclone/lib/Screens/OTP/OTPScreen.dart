import 'package:flutter/material.dart';
import 'package:whatsappuiclone/Widgets/UiHelper.dart';

class OTPScreen extends StatelessWidget {
  String phoneNumber;
  OTPScreen({super.key, required this.phoneNumber});

  TextEditingController otp1cont = TextEditingController();
  TextEditingController otp2cont = TextEditingController();
  TextEditingController otp3cont = TextEditingController();
  TextEditingController otp4cont = TextEditingController();
  TextEditingController otp5cont = TextEditingController();
  TextEditingController otp6cont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Uihelper.CustomText(
            text: "Verifying your number",
            height: 22,
            color: Color(0xff00a884),
            fontweight: FontWeight.bold),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Column(children: [
            Center(
              child: Uihelper.CustomText(
                  text: 'You\'ve tried to register +92$phoneNumber',
                  height: 16),
            ),
            SizedBox(
              height: 3,
            ),
            Uihelper.CustomText(
                text: 'recently. Wait before requesting an sms or call.',
                height: 16),
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'With You Code.', height: 16),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Uihelper.CustomText(
                        text: ' Wrong number?',
                        height: 16,
                        color: Colors.green)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomContainers(otp1cont),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainers(otp2cont),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainers(otp3cont),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainers(otp4cont),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainers(otp5cont),
                SizedBox(
                  width: 10,
                ),
                Uihelper.CustomContainers(otp6cont),
                SizedBox(
                  width: 10,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Uihelper.CustomText(
                text: 'Didn\'t receive code?',
                height: 15,
                color: Colors.green.shade700)
          ]),
        ],
      ),
      floatingActionButton:
          Uihelper.CustomButton(callback: () {}, buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
