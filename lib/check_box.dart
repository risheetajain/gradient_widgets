// import 'package:flutter/material.dart';

// class MySingleSelectionCheckBox extends StatefulWidget {
//   const MySingleSelectionCheckBox({super.key});

//   @override
//   State<MySingleSelectionCheckBox> createState() =>
//       _MySingleSelectionCheckBoxState();
// }

// class _MySingleSelectionCheckBoxState extends State<MySingleSelectionCheckBox> {
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       children: [RawCheckBox()],
//     );
//   }
// }

// class RawCheckBox extends StatefulWidget {
//   const RawCheckBox({super.key});

//   @override
//   State<RawCheckBox> createState() => _RawCheckBoxState();
// }

// class _RawCheckBoxState extends State<RawCheckBox> {
//   bool isSelected = true;
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         setState(() {
//           isSelected = !isSelected;
//         });
//       },
//       child: Container(
//         width: 24,
//         height: 24,
//         alignment: Alignment.center,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFFF09869),
//               Color(0xFFC729B2),
//             ],
//           ),
//           borderRadius: BorderRadius.all(Radius.circular(6)),
//         ),
//         child: Row(
//           children: [
//             isSelected
//                 ? const Icon(Icons.check_rounded, color: Colors.white)
//                 : Padding(
//                     padding: const EdgeInsets.all(4),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(5)),
//                     ),
//                   ),
//             const SizedBox(
//               width: 10,
//             ),
//             const Text("Yes")
//           ],
//         ),
//       ),
//     );
//   }
// }
