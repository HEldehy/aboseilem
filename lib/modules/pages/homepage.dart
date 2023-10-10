// import 'package:flutter/material.dart';
// import 'package:foktukhier/modules/pages/second.dart';
// import '../reausable_components/widgets/grid_container.dart';
// import 'cert_screen.dart';
// class HomePage extends StatelessWidget {
//   static String id = 'HomePage';
//   List<String>name=['New Courses', 'My Courses', 'Other Courses', 'Contact Us'];
//   HomePage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         iconTheme: const IconThemeData(
//             color: Colors.black
//         ),
//         elevation: 0,
//
//       ),
//       drawer: const Drawer(),
//       backgroundColor:Colors.white,
//       body: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Column(
//           children: [
//             GridView.count(
//               scrollDirection: Axis.vertical,
//               mainAxisSpacing: 0.5,
//               crossAxisSpacing: 0.5,
//               childAspectRatio: 1 / 1.4,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               crossAxisCount: 2,
//               padding:
//               const EdgeInsets.only(left: 1, right: 1, top: 6),
//               children: [
//                 gridContainer(context, const SecondScreen(),
//                     'New Courses', 'assets/image/new.png'),
//                 gridContainer(context, const SecondScreen(),
//                     'My Courses', 'assets/image/mycourses.png'),
//                 gridContainer(context, const SecondScreen(),
//                     'Other Courses', 'assets/image/other.png'),
//                 gridContainer(context, const SecondScreen(),
//                     'Contact Us', 'assets/image/info.png'),
//               ],
//             )
//           ],
//         ),
//       ),
//       // bottomNavigationBar: BottomNavigationBar(
//       //   items: cubit.bottomItem,
//       //   currentIndex: cubit.currentIndex,
//       //   onTap: (index){cubit.changeBottomNavIcon(index);
//       //
//       //   },
//       //
//       // ),
//
//     )
//     ;
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import '../../models/model.dart';

class HomeScreen extends StatefulWidget {
  static String id = 'HomePage';
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final currentUser = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
       body:
      // Container(child:
      //    Center(
      //      child: PDF().cachedFromUrl('https://firebasestorage.googleapis.com/v0/b/octukheir-626f5.appspot.com/o/SLA(1).pdf?alt'
      //          '=media&token=566e093e-ccc1-4065-b417-0c72f129faa2'),
      //    ),
       StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('okct')
            .where('uId', isEqualTo: currentUser.currentUser!.uid)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            return

              ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.data!.docs.length,
                shrinkWrap: true,
                itemBuilder: (context, i) {
                  var data = snapshot.data!.docs[i];

                  return
                      SingleChildScrollView(
                        child: Container(
                            height:650,
                            child: Center(child:
                           PDF().cachedFromUrl(data['pdf']))),


                  );
                });
          }
          else {
            return Center(
                child: Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.cyan,
              ),
            ));
          }
        },
      ),
    );
  }
}

UserModel model = UserModel();
getUserInformation() {
  String uid = FirebaseAuth.instance.currentUser!.uid;
  FirebaseFirestore.instance.collection('users').doc(uid).get().then((value) {
    debugPrint(value.toString());
  }).catchError((error) {
    debugPrint(error.toString());
  });
}
