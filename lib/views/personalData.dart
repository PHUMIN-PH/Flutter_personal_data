import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:personal_data/views/activity.dart';
import 'model/personalData_fetch.dart';

class PersonalData extends StatefulWidget {
  const PersonalData({super.key});

  @override
  State<PersonalData> createState() => _PersonalDataState();
}

class _PersonalDataState extends State<PersonalData>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<List<User>> fetchUser() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/photos' as Uri);

    String logResponse = response.statusCode.toString();

    if (response.statusCode == 200) {
      print('ResponseStatusCode: $logResponse'); // Check Status Code = 200
      print('ResponseBody: ' + response.body); // Read Data in Array

      List<dynamic> responseJson = json.decode(response.body);
      return responseJson.map((m) => new User.fromJson(m)).toList();
    } else {
      throw Exception('error :(');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar_Method(),
      body: Expanded(
        child: TabBarView(
          controller: _tabController,
          children: [
            ListView(
              padding: EdgeInsets.all(20),
              children: [
                Card(
                  color: Colors.amberAccent,
                  child: ListTile(
                    title: Text("Jenny Lincon"),
                    subtitle: Text("Java Developer  Tel: 8845985"),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      iconSize: 50,
                      color: Colors.redAccent,
                      onPressed: () {
                        onPressIconInsert();
                      },
                    ),
                  ),
                ),
                Card(
                  color: Colors.amberAccent,
                  child: ListTile(
                    title: Text("Jenny Lincon"),
                    subtitle: Text("Java Developer  Tel: 8845985"),
                  ),
                ),
              ],
            ),
            Center(
              child: Text("Fetch filter data here"),
            ),
          ],
        ),
      ),
    );
  }

  AppBar AppBar_Method() {
    return AppBar(
      backgroundColor: Colors.amber,
      title: const Text("Personal Data"),
      centerTitle: true,
      bottom: TabBar(
        controller: _tabController,
        tabs: const <Widget>[
          Tab(
            icon: Icon(Icons.person_2),
          ),
          Tab(
            icon: Icon(Icons.filter_list),
          ),
        ],
      ),
    );
  }

  void onPressIconInsert() {
    ScaffoldMessenger.of(context)
        .showSnackBar(const SnackBar(content: Text('Alert snackbar')));
  }
}
