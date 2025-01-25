   import 'package:flutter/material.dart';
   import 'package:http/http.dart' as http;
   import 'dart:convert';

   void main() {
     runApp(MyApp());
   }

   class MyApp extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return MaterialApp(
         home: RuanganList(),
       );
     }
   }

   class RuanganList extends StatefulWidget {
     @override
     _RuanganListState createState() => _RuanganListState();
   }

   class _RuanganListState extends State<RuanganList> {
     final String apiUrl = "http://127.0.0.1:8000/api/ruangans";
     List<dynamic> ruangans = [];

     @override
     void initState() {
       super.initState();
       fetchRuangans();
     }

     Future<void> fetchRuangans() async {
       final response = await http.get(Uri.parse(apiUrl));
       if (response.statusCode == 200) {
         setState(() {
           ruangans = json.decode(response.body);
         });
       } else {
         throw Exception('Failed to load ruangans');
       }
     }

     @override
     Widget build(BuildContext context) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Daftar Ruangan'),
         ),
         body: ListView.builder(
           itemCount: ruangans.length,
           itemBuilder: (context, index) {
             return ListTile(
               title: Text(ruangans[index]['nama_ruang']),
               subtitle: Text('Kode: ${ruangans[index]['kode_ruang']} - Kapasitas: ${ruangans[index]['kapasitas']}'),
             );
           },
         ),
         floatingActionButton: FloatingActionButton(
           onPressed: () {
             // Tambahkan logika untuk menambah ruangan baru
           },
           child: Icon(Icons.add),
         ),
       );
     }
   }
