import 'package:flutter/material.dart';

class InfoData extends StatefulWidget {
  const InfoData({super.key});

  @override
  State<InfoData> createState() => _InfoDataState();
}

class _InfoDataState extends State<InfoData> {
  String personal_idCard = "1 85006 456852 56 9";
  String personal_nameTH = "วิภาวี มีโชค";
  String personal_nameEN = "Vipawee meechock";
  String personal_birthTH = "13 ธ.ค. 2558";
  String personal_birthEN = "13 Dec 2015";
  String personal_address = "999 Ladprao Bangkok Thailand.";
  String personal_issueTH = "12 ก.พ. 2560";
  String personal_issueEN = "12 Feb 2017";
  String personal_expiryTH = "13 ก.พ. 2570";
  String personal_expiryEN = "13 Feb 2017";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Info Personal Data'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        padding: EdgeInsets.all(10),
        width: double.infinity,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'บัตรประจำตัวประชาชน ',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Thai National ID Card',
                  style: TextStyle(fontSize: 17, color: TextColorEN,),
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('เลขประจำตัวประชาชน '),
                    Text(
                      'Identification Number',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  personal_idCard,
                  style: TextStyle(
                    fontSize: 17,
                    color: TextColorEN,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/img/simcard.png',
                      scale: 6,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('ชื่อ นามสกุล'),
                                SizedBox(
                                  width: 17,
                                ),
                                Text(
                                  personal_nameTH,
                                  style: TextStyle(fontSize: 17),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("Full Name"),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  personal_nameEN,
                                  style: TextStyle(fontSize: 15,
                                  color: TextColorEN),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("เกิดวันที่"),
                                SizedBox(
                                  width: 17,
                                ),
                                Text(
                                  personal_birthTH,
                                  style: TextStyle(fontSize: 17),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Date of Birth"),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  personal_birthEN,
                                  style: TextStyle(fontSize: 15,color: TextColorEN),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Ad: "),
                        Text(personal_address),
                      ],
                    ),
                    Text(personal_issueTH),
                    Text("วันออกบัตร"),
                    
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  MaterialColor get TextColorEN => Colors.blue;
}
