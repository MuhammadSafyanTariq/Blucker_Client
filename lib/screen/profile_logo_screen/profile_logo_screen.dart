import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blukers_client_app/common/widgets/back_button.dart';
import 'package:blukers_client_app/screen/auth/sign_in_screen/sign_in_screen.dart';
import 'package:blukers_client_app/screen/looking_for_screen/looking_for_screen.dart';
import 'package:blukers_client_app/utils/app_style.dart';
import 'package:blukers_client_app/utils/asset_res.dart';
import 'package:blukers_client_app/utils/color_res.dart';
import 'package:blukers_client_app/utils/string.dart';

class ProfileLogoScreen extends StatelessWidget {
  const ProfileLogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorRes.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: logo(),
            ),
            const SizedBox(height: 40),
            const Center(
              child: Image(
                image: AssetImage(AssetRes.profileLogo),
                height: 150,
              ),
            ),
            const SizedBox(height: 30),
            Center(
              child: Text("Get discovered by recruiters\n from top companies",
                  style: GoogleFonts.montserrat(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: ColorRes.black),
                  textAlign: TextAlign.center),
            ),
            const SizedBox(height: 15),
            const Center(
                child: Image(
              image: AssetImage(AssetRes.companyProfile),
              height: 38,
            )),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "+ 700 more",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: ColorRes.black.withOpacity(0.8)),
              ),
            ),
            const SizedBox(height: 38),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (con) => const LookingForScreen()));
              },
              child: Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 36,
                  width: 147,
                  decoration: BoxDecoration(
                      color: ColorRes.containerColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      Strings.registerForFree,
                      style: const TextStyle(
                          color: ColorRes.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Strings.alreadyHaveAccount,
                  style: appTextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: const Color(0xff555555)),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (con) => const SigninScreenU()));
                  },
                  child: Text(
                    Strings.login,
                    style: appTextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: ColorRes.containerColor),
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
