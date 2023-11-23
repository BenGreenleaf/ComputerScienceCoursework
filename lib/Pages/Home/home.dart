import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:hyperion/Pages/Home/transactions.dart';
import 'package:hyperion/Pages/Home/vault.dart';
import 'package:hyperion/Pages/SplashPages/loadsplash.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final user = FirebaseAuth.instance.currentUser!;
  FirebaseDatabase database = FirebaseDatabase.instance;
  var currentUser = FirebaseAuth.instance.currentUser;
  var uid = FirebaseAuth.instance.currentUser?.uid;
  Map<String, dynamic> user = {'accountValue': "", 'username': '', 'pfp': ''};

  Future<List<dynamic>> vaultFunc() async {
    CollectionReference vaultsRef =
        FirebaseFirestore.instance.collection('vaults');
    QuerySnapshot snapshot =
        await vaultsRef.where('uid', isEqualTo: '$uid').get();

    List<dynamic> vaultsData = snapshot.docs.map((doc) => doc.data()).toList();

    // print(vaultsData);
    // print("Was Called");
    return vaultsData;
  }

  bool notificationSelected = false;
  bool recentTransSelected = false;

  List<dynamic> vaultsArray = [];

  @override
  void initState() {
    //getDocId();
    super.initState();
    //getData();
    // getInfo();

    //userSub();
  }

/*Future getData() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    CollectionReference vaultsRef =
        FirebaseFirestore.instance.collection('vaults');
    print(uid);
    dynamic udata = (await users.doc(uid).get()).data();

    List<dynamic> vaultsData = await vaultsRef
        .where('uid', isEqualTo: 'uLtcdmKqKzaAvoxsNezj4CVbQCp2')
        .get()
        .then((snapshot) => snapshot.docs.map((doc) => doc.data()).toList());

    print(vaultsData);

    vaultsArray = vaultsData;

    print(vaultsArray);

    user['accountValue'] = udata['accountValue'];
    user['username'] = udata['accountValue'];
    user['pfp'] = udata['pfp'];
    print(user);
    print(vaultsArray[0]['name']);
    print(vaultsArray.length);
  }*/

  // Future getInfo() async {
  //   DatabaseReference ref = FirebaseDatabase.instance.ref("users/$uid");

  //   // Get the Stream
  //   Stream<DatabaseEvent> stream = ref.onValue;

  //   // Subscribe to the stream!
  //   stream.listen((DatabaseEvent event) {
  //     print('Event Type: ${event.type}'); // DatabaseEventType.value;
  //     print('Snapshot: ${event.snapshot}'); // DataSnapshot
  //   });
  // }

  /*Future userSub() async {
    DatabaseReference userRef =
        FirebaseDatabase.instance.ref('users/uLtcdmKqKzaAvoxsNezj4CVbQCp2');
    userRef.onValue.listen((DatabaseEvent event) {
      final data = event.snapshot.value;
      print("123");
      getData();
    });
  }*/

// const userRef = firebase.firestore().collection("users").doc("user-2");

//   CollectionReference _collectionRef =
//    (FirebaseFirestore.instance.collection('users')).doc("test");
//   Future<void> getData() async {
//     // Get docs from collection reference
//     QuerySnapshot querySnapshot = await _collectionRef.get();

//     // Get data from docs and convert map to List
//     final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

//     print(allData);
//   }

//   Future getDocId() async {
//     DatabaseReference ref = FirebaseDatabase.instance.ref("/users/Test");
//     DatabaseEvent event = await ref.once();
//     // Print the data of the snapshot
//     print(event.snapshot.value); // { "name": "John" }
//   }

  Future<void> fetchData() async {
    try {
      List<dynamic> value = await vaultFunc();
      setState(() {
        vaultsArray = value;
      });
    } catch (e) {
      // print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    double startHeight = 926;
    double width = 429;
    double height = 926;
    final Stream<DocumentSnapshot> userStream =
        FirebaseFirestore.instance.collection('users').doc(uid).snapshots();

    return StreamBuilder<DocumentSnapshot>(
      stream: userStream,
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return const Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return const Text("Document does not exist");
        }

        if (!snapshot.hasData) {
          return const SplashPage();
        }

        Map<String, dynamic> data =
            snapshot.data!.data() as Map<String, dynamic>;
        user['accountValue'] = data['accountValue'];
        user['username'] = data['username'];
        user['pfp'] = data['pfp'];
        // CollectionReference users =
        //           FirebaseFirestore.instance.collection('users');

        /*vaultFunc().then((dynamic value) {
          print("a");
          print(value);
          vaultsArray = value;
          print(vaultsArray);
        });*/

        return ListView(children: [
          Container(
            width: width,
            height: height,
            color: Theme.of(context).primaryColor,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SizedBox(
                      width: width,
                      height: 881.08,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 413,
                            height: 59,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 41,
                              vertical: 3,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 260,
                                  height: 53,
                                  padding: const EdgeInsets.only(
                                    right: 9,
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                          width: 41,
                                          height: 41,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            child: Image.network(
                                              user['pfp'],
                                              height: 250,
                                              width: 250,
                                            ),
                                          )
                                          //FlutterLogo(size: 40),
                                          ),
                                      const SizedBox(width: 20),
                                      SizedBox(
                                        width: 189,
                                        height: 39,
                                        child: Stack(
                                          children: [
                                            Positioned.fill(
                                              child: Container(
                                                alignment: Alignment.topLeft,
                                                padding: const EdgeInsets.only(
                                                    bottom: 3),
                                                child: SizedBox(
                                                  width: 189,
                                                  height: double.infinity,
                                                  child: Text(
                                                    user['username'],
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .scaffoldBackgroundColor,
                                                      fontSize: 22,
                                                      fontFamily: "Montserrat",
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned.fill(
                                              child: Container(
                                                alignment: Alignment.bottomLeft,
                                                padding: const EdgeInsets.only(
                                                    top: 3),
                                                child: SizedBox(
                                                  width: 160,
                                                  child: Text(
                                                    "Welcome back to Hyperion ",
                                                    style: TextStyle(
                                                      color: Theme.of(context)
                                                          .scaffoldBackgroundColor,
                                                      fontSize: 10.5,
                                                      fontFamily: "Montserrat",
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 45),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          notificationSelected =
                                              !notificationSelected;
                                          if (recentTransSelected) {
                                            recentTransSelected = false;
                                          }
                                        });
                                      },
                                      child: SvgPicture.asset(
                                          'assets/icons/notifications.svg')),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 26),
                          SizedBox(
                            width: 361,
                            height: 72,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 118,
                                  height: 15,
                                  child: Text(
                                    "Account Value",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      fontSize: 14,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 5),
                                SizedBox(
                                  width: 361,
                                  height: 52,
                                  child: Text(
                                    user['accountValue'],
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      fontSize: 45,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 26),
                          SizedBox(
                            width: 360,
                            height: 159.08,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 360,
                                  height: 27,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 156,
                                        height: 27,
                                        child: Text(
                                          "Vaults",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            fontSize: 23,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 180),
                                      SizedBox(
                                        width: 24,
                                        height: 27,
                                        child: Text(
                                          "All",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            fontSize: 14,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Vault(user: currentUser),
                              ],
                            ),
                          ),
                          const SizedBox(height: 26),
                          SizedBox(
                            width: 360,
                            height: 129,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 360,
                                  height: 27,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        width: 156,
                                        height: 27,
                                        child: Text(
                                          "Investments",
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            fontSize: 23,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 180),
                                      SizedBox(
                                        width: 24,
                                        height: 27,
                                        child: Text(
                                          "All",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                            fontSize: 14,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 15),
                                SizedBox(
                                  width: 360,
                                  height: 86,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 78,
                                        height: 86,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 27,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: SvgPicture.asset(
                                                  colorFilter: ColorFilter.mode(
                                                      Theme.of(context)
                                                          .primaryColor,
                                                      BlendMode.srcIn),
                                                  'assets/icons/Crypto.svg'),
                                            ),
                                            const SizedBox(height: 3),
                                            SizedBox(
                                              width: 62,
                                              height: 15,
                                              child: Text(
                                                "Crypto",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontSize: 10.5,
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Container(
                                        width: 78,
                                        height: 86,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                        ),
                                        padding: const EdgeInsets.only(
                                          top: 19,
                                          bottom: 17,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 37,
                                              height: 34,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: SvgPicture.asset(
                                                  colorFilter: ColorFilter.mode(
                                                      Theme.of(context)
                                                          .primaryColor,
                                                      BlendMode.srcIn),
                                                  'assets/icons/Stocks.svg'),
                                            ),
                                            const SizedBox(height: 3),
                                            SizedBox(
                                              width: 62,
                                              height: 12,
                                              child: Text(
                                                "Stocks",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontSize: 10.5,
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Container(
                                        width: 78,
                                        height: 86,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                        ),
                                        padding: const EdgeInsets.only(
                                          top: 19,
                                          bottom: 16,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 31,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: SvgPicture.asset(
                                                  colorFilter: ColorFilter.mode(
                                                      Theme.of(context)
                                                          .primaryColor,
                                                      BlendMode.srcIn),
                                                  'assets/icons/Venture.svg'),
                                            ),
                                            const SizedBox(height: 7),
                                            SizedBox(
                                              width: 62,
                                              height: 12,
                                              child: Text(
                                                "Venture",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontSize: 10.5,
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 16),
                                      Container(
                                        width: 78,
                                        height: 86,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: Theme.of(context)
                                              .scaffoldBackgroundColor,
                                        ),
                                        padding: const EdgeInsets.only(
                                          top: 16,
                                          bottom: 16,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 36,
                                              height: 34,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              child: SvgPicture.asset(
                                                  colorFilter: ColorFilter.mode(
                                                      Theme.of(context)
                                                          .primaryColor,
                                                      BlendMode.srcIn),
                                                  'assets/icons/Overall.svg'),
                                            ),
                                            const SizedBox(height: 7),
                                            SizedBox(
                                              width: 62,
                                              height: 12,
                                              child: Text(
                                                "Overall",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontSize: 10.5,
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 26),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width,
                  height: height,
                  child: Stack(
                    children: [
                      AnimatedPositioned(
                        width: width,
                        height: 753,
                        top: recentTransSelected ? 250 : 570,
                        duration: const Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                        child: Container(
                          width: width,
                          height: 753,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, -4),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 34,
                            vertical: 8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    recentTransSelected = !recentTransSelected;
                                    if (notificationSelected) {
                                      notificationSelected = false;
                                    }
                                  });
                                },
                                child: Container(
                                  width: 32,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              SizedBox(
                                width: 360,
                                height: 27,
                                child: Text(
                                  "Yesterday",
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 17.6,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              Transactions(user: currentUser),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]);
      },
    );
  }
}
