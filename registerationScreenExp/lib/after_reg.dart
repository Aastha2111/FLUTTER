import 'package:flutter/Material.dart';

class After_Register extends StatelessWidget {
  const After_Register({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
           Center(
            child: Text(
              "Registeration Successfully ",
              style: TextStyle(fontSize: 50, color: Colors.red),
            ),
          ),
          ElevatedButton(
            // color: Colors.blueGrey,
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Go back'),
          ),
        ]),
      ),
    );
  }
}
















// =========================prashant ========================



// import 'package:flutter/Material.dart';

// class After_Register extends StatelessWidget {
//   const After_Register({Key? key}) : super(key: key);


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(children: [
//            Center(
//             child: Text(
//               "Registeration Successfully ",
//               style: TextStyle(fontSize: 50, color: Colors.red),
//             ),
//           ),
//           ElevatedButton(
//             // color: Colors.blueGrey,
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text('Go back'),
//           ),
//         ]),
//       ),
//     );
//   }
// }