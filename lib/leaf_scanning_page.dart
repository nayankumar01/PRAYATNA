// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
//
// class LeafScanningPage extends StatefulWidget {
//   @override
//   _LeafScanningPageState createState() => _LeafScanningPageState();
// }
//
// class _LeafScanningPageState extends State<LeafScanningPage> {
//   late CameraController _cameraController;
//   late List<CameraDescription> _cameras;
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeCamera();
//   }
//
//   Future<void> _initializeCamera() async {
//     _cameras = await availableCameras();
//     _cameraController = CameraController(_cameras[0], ResolutionPreset.medium);
//     await _cameraController.initialize();
//     if (!mounted) {
//       return;
//     }
//     setState(() {});
//   }
//
//   @override
//   void dispose() {
//     _cameraController.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     if (!_cameraController.value.isInitialized) {
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Leaf Scanning'),
//         ),
//         body: Center(
//           child: CircularProgressIndicator(),
//         ),
//       );
//     }
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Leaf Scanning'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: CameraPreview(_cameraController),
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {
//               _scanLeaf(); // Implement your leaf scanning logic here
//             },
//             child: Text('Scan Leaf'),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Sample Output:',
//             style: TextStyle(fontSize: 18),
//           ),
//           // Display the sample output here
//           // You can replace this with your actual scanned leaf result
//           Text(
//             'Leaf disease: Rust',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _scanLeaf() {
//     setState(() {
//       sampleOutput = 'Leaf disease: Rust';
//     });
//   }
// }
//
// String sampleOutput = ''; // Placeholder for sample output
