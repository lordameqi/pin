import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'tiket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ringkasan'),
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              color: Colors.redAccent,),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 10,),
          Container(
            height: 150,
            width: 140,
            margin: EdgeInsets.only(left: 20,right: 20),
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
              child: Column(
              children: [
                const Text('Nominal',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18)
                  ),
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
                margin: EdgeInsets.only(top: 20),
               child: Align(
                  alignment: Alignment.centerLeft,
                  child:
                  Text(
                    'Pembayaran ke ',
                  ),
                ),
              ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child:
                    Text(
                      'Bakso Mas yogi ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              ],
            ),)

          ),
          SizedBox(height: 50,),
          Container(
            margin: EdgeInsets.only(bottom: 10,left: 20),
            child:Align(
            alignment: Alignment.centerLeft,
            child:
            Text(
              'Pembayaran dari ',
            ),
          ),
          ),
          Container(
              height: 100,
              width: 140,
              margin: EdgeInsets.only(left: 20,right: 20),
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
                    Icon(Icons.credit_card,size: 40.0, ),
                    SizedBox(width: 10,),
                    Text("MASTERCARD PLATINUM  REG.", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13
                    ),),
                    Text("(***459)", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13
                    ),)

                  ],
                ),)

          ),
          SizedBox(height: 20,),
          Container(
              height: 100,
              width: 140,
              margin: EdgeInsets.only(left: 20,right: 20),
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
          SizedBox(height: 30,),

          Container(
            margin: EdgeInsets.only(bottom: 10,left: 20),
            child:Align(
              alignment: Alignment.centerLeft,
              child:
              Text(
                'Detail Pembayaran ',
              ),
            ),
          ),
          Container(
              height: 100,
              width: 140,
              margin: EdgeInsets.only(left: 20,right: 20),
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
              child: Flexible(

                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 13,left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                        Text(
                          'No Referensi Tagihan ',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                        Text(
                          '7000010 ',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                        Text(
                          'Total Pembayaran ',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,left: 10),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child:
                        Text(
                          'IDR 210000 ',
                        ),
                      ),
                    ),



                  ],
                ),)

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              width: double.infinity,
              child: ElevatedButton(
                child: Text('Lanjut', style: TextStyle(fontSize: 24)),
                onPressed: () => {
                  showModalBottomSheet(
                      context: context,
                    backgroundColor: Colors.transparent,
                    isScrollControlled: true,
                      builder: (BuildContext context) {
                        return Padding(
                            padding: MediaQuery.of(context).viewInsets,
                            child: Container(
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                              //bottom: Radius.circular(30),
                            ),//BorderRadius.verticalBorderRadius.Only
                          ),

                            child: Column(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(height: 30,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(onPressed: () => Navigator.pop(context), icon: Icon(Icons.close_rounded)),
                                    Text("Konfirmasi Transaksi Anda?", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text(''),
                                    Text(''),
                                  ],
                                ),
                                Text("Masukan Pin Octo Mobile Anda"),
                                SizedBox(height: 5,),
                                PinCodeFields(
                                  length: 6,
                                  keyboardType: TextInputType.number,
                                  obscureText: true,
                                  obscureCharacter: '⚫',
                                  onComplete: (text) {
                                    // Your logic with pin code
                                    print(text);
                                  },
                                ),
                                SizedBox(height: 15,),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                child: Container(
                                  width: 300,

                                child: ElevatedButton(
                                  child: const Text('Lanjut'),
                                  onPressed: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Tiket()),
                                    );
                                  }, style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                )
                                ),
                                )
                                )
                              ],
                            ),

                        ));
                      },)
                },

              ),
          )
          )

        ],
      ),
    );
  }
}

