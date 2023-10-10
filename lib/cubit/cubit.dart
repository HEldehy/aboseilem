// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:octukheir/cubit/states.dart';
// import 'package:octukheir/modules/pages/second.dart';
//
// import '../modules/reausable_components/constance/icon_broken.dart';
// class OctuCubit extends Cubit<OctuStates>{
//   OctuCubit():super(OctuInitialStates());
//   static OctuCubit get(context)=>BlocProvider.of(context);
//   int currentIndex = 0;
//   List<BottomNavigationBarItem> bottomItem = [
//     const BottomNavigationBarItem(icon: Icon(IconBroken.Home), label: 'Home'),
//     const BottomNavigationBarItem(icon: Icon(IconBroken.Chat), label: 'Chat'),
//     const BottomNavigationBarItem(icon: Icon(IconBroken.Paper_Upload), label: 'Post'),
//   ];
//   List<Widget> bottomScreen = [
//     SecondScreen(),
//     SecondScreen(),
//     SecondScreen(),
//   ];
//   void changeBottomNavIcon(int index) {
//     if(index==1)
//     //  getUsers()
//     ;
//     if (index == 2) {
//       emit(OctuHomeState());
//     } else {
//       currentIndex = index;
//       emit(OctuChatState());
//     }
//   }
//   List<String> titles = [
//     'Home',
//     'Chats',
//     'Posts',
//     'Users',
//     'Settings',
//   ];
//
//
// }