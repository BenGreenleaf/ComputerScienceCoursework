import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class Transactions extends StatefulWidget {
  final dynamic user;

  const Transactions({super.key, required this.user});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  FirebaseDatabase database = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Map<String, dynamic>>> transactionStream =
        FirebaseFirestore.instance
            .collection('transactions')
            .where('uid', isEqualTo: widget.user.uid)
            .snapshots();
    return StreamBuilder<QuerySnapshot>(
        stream: transactionStream,
        builder: (BuildContext context, snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            List<QueryDocumentSnapshot<dynamic>> docs = snapshot.data!.docs;

            return SizedBox(
                width: 358.0,
                height: 500.0,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      var doc = docs[index];
                      String category = doc["category"];
                      String imageLocation = doc['image'];
                      String date = doc["date"];
                      String val = doc["value"];
                      bool posOneg = doc['posOneg'];
                      String name = doc["name"];
                      var colorS = posOneg
                          ? Color(0xff009b22)
                          : Color.fromARGB(255, 155, 0, 0);

                      return Container(
                        width: 358,
                        height: 43,
                        margin: const EdgeInsets.only(bottom: 15.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 43,
                                  height: 43,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: const Color(0xffd9d9d9),
                                  ),
                                  child: Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.network(imageLocation,
                                          fit: BoxFit.fitWidth)),
                                ),
                                const SizedBox(width: 12),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 95,
                                      height: 19,
                                      child: Text(
                                        name,
                                        style: const TextStyle(
                                          color: Color(0xff1d2939),
                                          fontSize: 13.50,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    SizedBox(
                                      width: 95,
                                      height: 19,
                                      child: Text(
                                        date,
                                        style: const TextStyle(
                                          color: Color(0xff274874),
                                          fontSize: 11.50,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(width: 113),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 95,
                                  height: 19,
                                  child: Text(
                                    "+ £$val",
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: true //posOneg == "true"
                                          ? Color(0xff009b22)
                                          : Color.fromARGB(255, 155, 0, 0),
                                      fontSize: 15,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 3),
                                SizedBox(
                                  width: 95,
                                  height: 19,
                                  child: Text(
                                    category,
                                    textAlign: TextAlign.right,
                                    style: const TextStyle(
                                      color: Color(0xff274874),
                                      fontSize: 11.50,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }));
          }
        });
  }
}
