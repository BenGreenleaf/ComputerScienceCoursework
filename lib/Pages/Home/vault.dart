import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';

class Vault extends StatefulWidget {
  final dynamic user;

  const Vault({super.key, required this.user});

  @override
  State<Vault> createState() => _VaultState();
}

class _VaultState extends State<Vault> {
  FirebaseDatabase database = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot<Map<String, dynamic>>> vaultStreams = FirebaseFirestore
        .instance
        .collection('vaults')
        .where('uid', isEqualTo: widget.user.uid)
        .snapshots();
    return StreamBuilder<QuerySnapshot>(
        stream: vaultStreams,
        builder: (BuildContext context, snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } else {
            List<QueryDocumentSnapshot<dynamic>> docs = snapshot.data!.docs;
            return SizedBox(
                width: 360,
                height: 119.08,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      var doc = docs[index];
                      String name = doc["name"];
                      String percen = doc["perOfPortfolio"];
                      String val = doc["value"];
                      String change = doc["change"];
                      return Row(children: [
                        Container(
                          width: 154.84,
                          height: 113.08,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          margin: const EdgeInsets.only(right: 40),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 23,
                                      height: 23,
                                      child: SvgPicture.asset(
                                          colorFilter: ColorFilter.mode(
                                              Theme.of(context).primaryColor,
                                              BlendMode.srcIn),
                                          'assets/icons/Holiday.svg'),
                                    ),
                                    const SizedBox(width: 2),
                                    Container(
                                      padding: const EdgeInsets.only(
                                        left: 5,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          FittedBox(
                                            child: Text(
                                              name,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 13.5,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 1),
                                          FittedBox(
                                            child: Text(
                                              percen + "%",
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                                fontSize: 11,
                                                fontFamily: "Montserrat",
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              SizedBox(
                                width: 154.84,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FittedBox(
                                      child: Text(
                                        "Value",
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            val,
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 15,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Container(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                            change + "%",
                                            style: const TextStyle(
                                              color: Color(0xff009b22),
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ]);
                    }));
          }
        });
  }
}
