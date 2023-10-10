// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:flutter/material.dart';
//
// import 'my_form_field.dart';
// class MyCountryCode extends StatelessWidget {
//   const MyCountryCode({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     var phoneController = TextEditingController();
//     return (
//         MyFormField(
//           onChange: (data){
//             data=phoneController.toString();
//             debugPrint(data);
//           },
//           controller: phoneController,
//           type: TextInputType.number,
//
//           label: 'Eg:1235313',
//           validator: () {},
//
//           prefix:
//               SizedBox(
//                 width: 200,
//                 child: CountryCodePicker(
//                   onChanged: (CountryCode countryCode){},
//                   showDropDownButton: true,
//                   initialSelection: 'eg',
//                   showCountryOnly: false,
//                   showOnlyCountryWhenClosed: false,
//                   favorite: const ['+20', 'eg'],
//                   enabled: true,
//                   hideMainText: false,
//                   showFlagMain: true,
//                   showFlag: true,
//                   hideSearch: false,
//                   showFlagDialog: true,
//                   alignLeft: true,
//                 ),
//               ),
//
//
//           )
//
//
//     );
//   }
// }
