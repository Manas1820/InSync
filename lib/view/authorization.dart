import 'package:flutter/material.dart';
import 'package:insync/widgets/button.dart';

class Authorization extends StatefulWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Image(image: AssetImage('assets/readwell.png')),
                  const Text(
                    "Read Well",
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  const Text(
                    "Stay relevant with all the news you like",
                    style: TextStyle(fontSize: 28, color: Color(0xff5C657D)),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const PrimaryButton(
                    buttonTitle: "create an account",
                    onPressed: null,
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: null,
                    child: const Text(
                      "already a member?",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff1A1A1A)),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
                          const EdgeInsets.symmetric(
                              vertical: 14.0, horizontal: 8)),
                      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                          (_) {
                        return RoundedRectangleBorder(
                            side: const BorderSide(
                                color: Color(0xff1A1A1A), width: 1),
                            borderRadius: BorderRadius.circular(12));
                      }),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
