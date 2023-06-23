import 'package:enota/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPageInput extends StatelessWidget {
  const TransactionPageInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Transaction Page"),
          backgroundColor: Colors.blue,
          elevation: 0,
          leading: IconButton(
              icon: Icon(Icons.navigate_before),
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()))
                  }),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              width: 330,
              height: 340,
              decoration: BoxDecoration(
                  color: Color(0x0000000).withOpacity(0.06),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      style: TextStyle(color: Color(0xff979797)),
                      decoration: InputDecoration(
                        labelText: 'Nama Item',
                        labelStyle: TextStyle(color: Color(0xff979797)),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Color(0xff979797)),
                      decoration: InputDecoration(
                        labelText: 'Harga',
                        labelStyle: TextStyle(color: Color(0xff979797)),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Color(0xff979797)),
                      decoration: InputDecoration(
                        labelText: 'Satuan',
                        labelStyle: TextStyle(color: Color(0xff979797)),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Color(0xff979797)),
                      decoration: InputDecoration(
                        labelText: 'Jumlah',
                        labelStyle: TextStyle(color: Color(0xff979797)),
                      ),
                    ),
                    TextField(
                      style: TextStyle(color: Color(0xff979797)),
                      decoration: InputDecoration(
                        labelText: 'Diskon',
                        labelStyle: TextStyle(color: Color(0xff979797)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(257, 18, 23, 0),
              width: 95,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff00B8E2),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: GestureDetector(
                  child: Text("Tambah",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TransactionPageInput()),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
