import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const Scaffold(body: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        Scaffold.of(context).showBottomSheet((context) => popup(context));
      },
      child: const Text('test'),
    ));
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  Widget popup(BuildContext context) {
    final Uri tou = Uri.parse('https://flutter.dev');
    final Uri priv = Uri.parse('https://ya.ru');

    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    const Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                      flex: 8,
                      child: FittedBox(
                        child: RichText(
                          text: const TextSpan(
                              text: 'Strictly prohibited during a call',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.w600)),
                          textScaleFactor: 1.8,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    const Expanded(flex: 1, child: SizedBox()),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                      flex: 8,
                      child: Column(children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.block,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: RichText(
                                textScaleFactor: 1.5,
                                maxLines: 2,
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text:
                                          'Demonstration of nudity, genitals, acts of sex',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ]),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 34.0),
                            child: Divider()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.block,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: RichText(
                                textScaleFactor: 1.5,
                                maxLines: 2,
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text:
                                          'Abuse other users and threaten them',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ]),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 34.0),
                            child: Divider()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.block,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: RichText(
                                textScaleFactor: 1.5,
                                maxLines: 2,
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text:
                                          'Propagate violence, nationalism, extremism',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ]),
                              ),
                            )
                          ],
                        ),
                        const Padding(
                            padding: EdgeInsets.only(left: 34.0),
                            child: Divider()),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.block,
                              color: Colors.red,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: RichText(
                                textScaleFactor: 1.5,
                                maxLines: 2,
                                text: const TextSpan(children: [
                                  TextSpan(
                                      text: 'Carry out any other illegal acts',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                      )),
                                ]),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 36,
                        ),
                      ])),
                  const Expanded(flex: 1, child: SizedBox()),
                ]),
                Row(children: [
                  Expanded(
                      flex: 5,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.white70),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: RichText(
                                maxLines: 1,
                                textScaleFactor: 1.5,
                                text: const TextSpan(
                                    text: 'Cancel',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                    ))),
                          ))),
                  const Expanded(flex: 1, child: SizedBox()),
                  Expanded(
                      flex: 5,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 154, 52, 255)),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: RichText(
                                maxLines: 1,
                                textScaleFactor: 1.5,
                                text: const TextSpan(
                                    text: 'Accept',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ))),
                          ))),
                ]),
                const SizedBox(
                  height: 12,
                ),
                RichText(
                    maxLines: 1,
                    textScaleFactor: 0.9,
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w400),
                        text: 'By continuing to use the app you confirm')),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RichText(
                    maxLines: 2,
                    textScaleFactor: 0.9,
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                            text: 'that you agree to our '),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _launchUrl(tou);
                              },
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline),
                            text: 'Terms of use'),
                        const TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                            text: ', '),
                        TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                _launchUrl(priv);
                              },
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                decoration: TextDecoration.underline),
                            text: 'Privacy policy'),
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ));
  }
}
