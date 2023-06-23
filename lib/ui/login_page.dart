import 'package:enota/main.dart';
import 'package:enota/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:enota/ui/registration_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(

            // appBar: AppBar(
            //   backgroundColor: Color(0xff92A3F9),
            //   elevation: 0,
            //   leading: IconButton(
            //     icon: Icon(Icons.navigate_before),
            //     onPressed: () => Navigator.of(context).pop(),
            //   ),
            // ),
            body: Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     fit: BoxFit.cover,
          //     image: AssetImage("assets/home_bg.jpg"),
          //   ),
          // ),
        ),
        Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 60, 0, 15),
                child: Text("Login",
                    style: GoogleFonts.poppins(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff00B8E2))),
              ),
            ),
            Center(
              child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/vector_loginpage.png"))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                style: TextStyle(color: Color(0xff00B8E2)),
                decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Color(0xff00B8E2)),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Color(0xff00B8E2),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: TextField(
                style: TextStyle(color: Color(0xff00B8E2)),
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Color(0xff00B8E2)),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff00B8E2),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(175, 12, 55, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("No Account ? ",
                      style: GoogleFonts.roboto(
                          fontSize: 14, color: Color(0xff00B8E2))),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistrationPage()));
                    },
                    child: Text("Create One ! ",
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00B8E2))),
                  ),
                ],
              ),
            ),
            Container(
              width: 230,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff00B8E2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  child: Text("Login",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ),
            )
          ],
        )
      ],
    )));
  }
}
