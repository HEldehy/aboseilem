// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import '../models/model.dart';
//
// class CertificationScreen extends StatefulWidget {
//   const CertificationScreen({Key? key}) : super(key: key);
//   @override
//   State<CertificationScreen> createState() => _CertificationScreenState();
// }
//
// class _CertificationScreenState extends State<CertificationScreen> {
//   final currentUser = FirebaseAuth.instance;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         child: Column(
//           children: [
//             StreamBuilder(
//               stream: FirebaseFirestore.instance
//                   .collection('cert')
//                   .where('uId', isEqualTo: currentUser.currentUser!.uid)
//                   .snapshots(),
//               builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
//                 if (snapshot.hasData) {
//                   return ListView.builder(
//                       physics: const BouncingScrollPhysics(),
//                       itemCount: snapshot.data!.docs.length,
//                       shrinkWrap: true,
//                       itemBuilder: (context, i) {
//                         var data = snapshot.data!.docs[i];
//                         return Column(
//                           children: [
//                             Padding(
//                                 padding: const EdgeInsets.symmetric(
//                                     horizontal: 20.0),
//                                 child: Container(
//                                     height: 300,
//                                     width: double.infinity,
//                                     child: Image.network(data['img'])
//                                     //Text(data['sss']),
//                                     //Image(image:data['img'],),
//                                     )
//
//                                 //Row(
//                                 //   mainAxisAlignment:
//                                 //   MainAxisAlignment.spaceBetween,
//                                 //   children: [
//                                 //     Text(data['img'],
//                                 //         style: TextStyle(
//                                 //             color: Colors.black,
//                                 //             fontFamily: 'Cairo',
//                                 //             fontSize: MediaQuery.of(context)
//                                 //                 .size
//                                 //                 .height /
//                                 //                 60,
//                                 //             fontWeight: FontWeight.bold)),
//                                 //     Text(data['grade10'],
//                                 //         style: TextStyle(
//                                 //             color: Colors.black,
//                                 //             fontFamily: 'Cairo',
//                                 //             fontSize: MediaQuery.of(context)
//                                 //                 .size
//                                 //                 .height /
//                                 //                 60,
//                                 //             fontWeight: FontWeight.bold)),
//                                 //   ],
//
//                                 ),
//                             const SizedBox(
//                               height: 12,
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 10.0),
//                               child: Container(
//                                 height: 1,
//                                 color: Colors.grey,
//                                 width: double.infinity,
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 12,
//                             ),
//                             Padding(
//                               padding:
//                                   const EdgeInsets.symmetric(horizontal: 25.0),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   FirebaseAuth.instance.signOut();
//                                 },
//                                 child: Center(
//                                     child: Text('تسجيل الخروج',
//                                         style: TextStyle(
//                                             color: Colors.cyan,
//                                             fontFamily: 'Cairo',
//                                             fontSize: MediaQuery.of(context)
//                                                     .size
//                                                     .height /
//                                                 60,
//                                             fontWeight: FontWeight.bold))),
//                               ),
//                             ),
//                           ],
//                         );
//                       });
//                 } else {
//                   return Center(
//                       child: Center(
//                     child: CircularProgressIndicator(
//                       backgroundColor: Colors.cyan,
//                     ),
//                   ));
//                 }
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// UserModel model = UserModel();
// getUserInformation() {
//   String uid = FirebaseAuth.instance.currentUser!.uid;
//   FirebaseFirestore.instance.collection('cert').doc(uid).get().then((value) {
//     debugPrint(value.toString());
//   }).catchError((error) {
//     debugPrint(error.toString());
//   });
// }
