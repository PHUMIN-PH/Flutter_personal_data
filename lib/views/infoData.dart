import 'package:flutter/material.dart';

class InfoData extends StatefulWidget {
  const InfoData({super.key});

  @override
  State<InfoData> createState() => _InfoDataState();
}

class _InfoDataState extends State<InfoData> {
  String cardid_text = "1 85006 456852 56 9";

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
                  style: TextStyle(fontSize: 17, color: Colors.blue[700]),
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
                SizedBox(width: 10,),
                Text(
                  cardid_text,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.blue[700],
                  ),
                )
              ],
            ),
            Icon(
              Icons.sim_card,
              color: Colors.amber[400],)
          ],
        ),
      ),
    );
  }
}
