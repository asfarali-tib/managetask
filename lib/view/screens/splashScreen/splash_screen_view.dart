// ignore_for_file: avoid_print


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:managetask/router/app_routes.dart';
import 'package:managetask/utils/app_sizes.dart';
import 'package:managetask/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {

  // String latitude = 'waiting...';
  // String longitude = 'waiting...';
  // String altitude = 'waiting...';
  // String accuracy = 'waiting...';
  // String bearing = 'waiting...';
  // String speed = 'waiting...';
  // String time = 'waiting...';
  // bool? serviceRunning;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      context.goNamed(AppRoute.loginScreen.name);
    });
    // checkPermissions();
    // BackgroundLocation.setAndroidNotification(
    //   title: 'Background service is running',
    //   message: 'Background location in progress',
    //   icon: '@mipmap/ic_launcher',
    // );
    // Timer.periodic(const Duration(seconds: 10), (value) {
    //   getLocation();
    // });
  }

  // Future<void> checkPermissions() async {
  //   try {
  //     if (await Permission.location.isGranted && await Permission.locationAlways.isGranted) {
  //       setState(() {
  //         print('Permission granted');
  //       });
  //     } else {
  //       await _requestPermissions();
  //     }
  //   } catch (e) {
  //     log("Error checking permissions: $e");
  //   }
  // }

  // Future<void> checkServiceStatus() async {
  //   bool isRunning = await BackgroundLocation.isServiceRunning();
  //   setState(() {
  //     serviceRunning = isRunning;
  //   });
  // }

  // Future<void> _requestPermissions() async {
  //   try {
  //     Map<Permission, PermissionStatus> status = await [
  //       Permission.location,
  //       Permission.locationAlways,
  //     ].request();
  //     if (status[Permission.location]!.isGranted && status[Permission.locationAlways]!.isGranted) {
  //       print('permission granted');
  //     } else if (status[Permission.location]!.isDenied || status[Permission.locationAlways]!.isDenied) {
  //       print('permission denied');
  //     } else if (status[Permission.location]!.isPermanentlyDenied || status[Permission.locationAlways]!.isPermanentlyDenied) {
  //       print('Permission permanently denied');
  //       openAppSettings();
  //     }
  //   } catch (e) {
  //     log("Error requesting permissions: $e");
  //   }
  // }

  // Future<void> getLocation() async {
  //   await BackgroundLocation.setAndroidNotification(
  //     title: 'Background service is running',
  //     message: 'Background location in progress',
  //     icon: '@mipmap/ic_launcher',
  //   );
  //   //await BackgroundLocation.setAndroidConfiguration(1000);
  //   await BackgroundLocation.startLocationService(
  //       distanceFilter: 0.0);
  //   BackgroundLocation.getLocationUpdates((location) {
  //     setState(() {
  //       latitude = location.latitude.toString();
  //       longitude = location.longitude.toString();
  //       accuracy = location.accuracy.toString();
  //       altitude = location.altitude.toString();
  //       bearing = location.bearing.toString();
  //       speed = location.speed.toString();
  //       time = DateTime.fromMillisecondsSinceEpoch(
  //               location.time!.toInt())
  //           .toString();
  //       log('''\n
  //       Latitude:  $latitude
  //       Longitude: $longitude
  //       Altitude: $altitude
  //       Accuracy: $accuracy
  //       Bearing:  $bearing
  //       Speed: $speed
  //       Time: $time
  //       IsServiceRunning: $serviceRunning
  //     ''');
  //     });
      
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH40,
            const Image(image: AssetImage('assets/icons/icon.png')),
            gapH40,
            Container(
              color: kWhite,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
              child: const Image(image: AssetImage('assets/images/pana.png')),
            ),
            gapH24, // Reduced gap here
            Text(
              "Manage\nYour\nTask With",
              style: GoogleFonts.workSans(color: kWhite, fontSize: 55, fontWeight: FontWeight.bold, height: 1, letterSpacing: 6)
            ),
            Text(
              "DayTask",
              style: GoogleFonts.workSans(color: kYellow, fontSize: 55, fontWeight: FontWeight.bold, height: 1, letterSpacing: 6)
            ),
            gapH32,
            
          ],
        ),
      ),
    );
  }
}
