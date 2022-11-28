import 'package:flutter/material.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:dotted_line/dotted_line.dart';

class Tiket extends StatelessWidget {
  const Tiket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton( icon: Icon(Icons.close_rounded), iconSize: 20, onPressed: () {}, ),
                      Text('Close'),
                    ],
                  ),
                ),

                Container(
                  child: Row(
                    children: [
                      IconButton( icon: Icon(Icons.share), iconSize: 20, onPressed: () {}, ),
                      Text('Bagikan'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Center(
            child:
            TicketWidget(
              width: 350,
              height: 900,
              isCornerRounded: true,
              padding: EdgeInsets.all(20),
              child: Column(
    children: [
      Container(
        child:
            Container(
              height: 90,
              width: 90,
              child: Image.asset('assets/image/sukses.jpeg'),
            ),
      ),

      DottedLine(),

      Container(
        height: 90,
        width: 90,
        child: Image.network('https://1.bp.blogspot.com/-zXiasUuw6Sc/YFDEyTTMR2I/AAAAAAAAEbM/NElK9ulVi4g5s_Sa4yCL96hzaajr_ST9wCLcBGAsYHQ/s1600/Logo%2BOCTO%2BMobile.png'),
      ),
      Text('Nominal',style: TextStyle(fontWeight: FontWeight.bold),),
      Container(
          margin: EdgeInsets.only(left: 120,right: 90,top: 5),
          child: Center(
            child: Row(
              children: [
                RichText(
                    text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Shizuru',
                        ),
                        children: [
                          TextSpan(
                            text: 'IDR ',
                          ),
                          TextSpan(
                            text: '-2,500',
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0.0, -7.0),
                              child: Text(
                                '00',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'RobotoMono',
                                ),
                              ),
                            ),)
                        ]
                    )
                ),

              ],
            ),
          )
      ),
      Container(
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Pembayaran ke"),
          Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Text("Bakso Mas Yogi1"),
                    Text("QR Merchant"),
                    Text("CIMB Niaga"),
                  ],
                ),
              )
          ),
        ],
        ),
      ),
      SizedBox(height: 10,),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Waktu Transaksi'),
                  Text('10 Nov 2022 14:37'),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text('Id transaksi'),
                  Text('1232123'),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5),
    alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Dibayar oleh"),
          Text("Nesta ini")
        ],
      ),),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("No Referensi"),
                  Text("298390183912")
                ],
              ),
            ),
            Container(
              child: ElevatedButton(onPressed: (){}, child: Row(
                children: [
                  Text("Detail"),
                  Icon(Icons.arrow_circle_up)
                ],
              )),
            ),

          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 5),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Rekening Sumber Dana'),
            Text('MasterCard Platinum Reg. (***549)'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Total Pembayaran'),
            Text('IDR 125,000,00'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('RRN'),
            Text('00000131213'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nomor Referensi Tagihan'),
            Text('213124'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Detail Lainnya'),
            Text('MPAN 2891u39812u312'),
            Text('CPAN 2813u213123'),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.only(top: 10),
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('TID'),
            Text('BOGOR'),

          ],
        ),
      ),
      Container(
          height: 100,
          width: 540,
          margin: EdgeInsets.only(left: 20,right: 20,top: 15),
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.lime,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 7,
                  spreadRadius: 5,
                  offset: Offset(0, 2),
                )
              ]
          ),
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.all(10),
            child: Row(
              children: [
                Icon(Icons.percent_rounded,size: 40.0, ),
                SizedBox(width: 10,),
                Flexible(child:  Text("MASTERCARD PLATINUM  REG. eknfoienfwenfonweofnewnfoewnfoewnfoewnfoewnf", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13
                ),),)



              ],
            ),)

      ),
    ],
    ),
            ),


    ),




        ],
      )
    );
  }
}
