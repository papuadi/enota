import 'package:enota/ui/homepages/transaction_input.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionPageResult extends StatelessWidget {
  TransactionPageResult({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff00B8E2), // Warna latar belakang AppBar
        scaffoldBackgroundColor: Color(0xff00B8E2), // Warna latar belakang body
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Buat Transaksi",
            style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xff00B8E2)),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff00B8E2),
            ),
            onPressed: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => TransactionPageInput()))
            },
          ),
        ),
        body: Container(
          color: Color(0xff00B8E2), // Warna latar belakang body
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 23, horizontal: 20),
                child: Table(
                  defaultColumnWidth: FixedColumnWidth(100.0),
                  border: TableBorder.all(
                      color: Colors.black, width: 1.0), // Tambahkan border
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Jumlah',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Item',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Harga',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Total',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                '2',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                'Gula Pasir',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                '10000',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        TableCell(
                          child: Container(
                            height: 50.0,
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                '20000',
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Jumlah = 20000',
                      textAlign: TextAlign.end,
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
