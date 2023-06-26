import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
// import 'package:email_validator/email_validator.dart';
// import 'env.dart';

// final Stream<QuerySnapshot> _ids =
//     FirebaseFirestore.instance.collection('emailJSIDs').snapshots();

final CollectionReference _ids =
    FirebaseFirestore.instance.collection('emailJSIDs');

enum SocialMedia {
  facebook,
  twitter,
  email,
  linkedin,
  whatsapp,
  instagram,
  youtube
}

class contactus extends StatefulWidget {
  const contactus({Key? key}) : super(key: key);

  @override
  State<contactus> createState() => _contactusState();
}

class _contactusState extends State<contactus> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController subject = TextEditingController();
  final TextEditingController message = TextEditingController();

  // final Stream<QuerySnapshot> _ids =
  //   FirebaseFirestore.instance.collection('emailJSIDs').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Connect with Us')),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                // left: 20.0,
                left: MediaQuery.of(context).size.width * 0.05,
                // right: 20,
                right: MediaQuery.of(context).size.width * 0.05,
                // top: 20,
                top: MediaQuery.of(context).size.height * 0.025,
              ),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Your Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            //

            Padding(
              padding: EdgeInsets.only(
                // left: 20.0,
                left: MediaQuery.of(context).size.width * 0.05,
                // right: 20,
                right: MediaQuery.of(context).size.width * 0.05,
                // top: 20,
                top: MediaQuery.of(context).size.height * 0.025,
              ),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            //

            Padding(
              padding: EdgeInsets.only(
                // left: 20.0,
                left: MediaQuery.of(context).size.width * 0.05,
                // right: 20,
                right: MediaQuery.of(context).size.width * 0.05,
                // top: 20,
                top: MediaQuery.of(context).size.height * 0.025,
              ),
              child: TextField(
                controller: subject,
                decoration: InputDecoration(
                  hintText: 'Subject',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            //

            Padding(
              padding: EdgeInsets.only(
                // left: 20.0,
                left: MediaQuery.of(context).size.width * 0.05,
                // right: 20,
                right: MediaQuery.of(context).size.width * 0.05,
                // top: 20,
                top: MediaQuery.of(context).size.height * 0.025,
              ),
              child: TextField(
                controller: message,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Share Your Experience',
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            //

            StreamBuilder(
              stream: _ids.snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
                final QueryDocumentSnapshot<Object?>? documentSnapshot =
                    streamSnapshot.data?.docs[0];
                if (streamSnapshot.hasData) {
                  return Padding(
                    padding: EdgeInsets.only(
                      // left: 20.0,
                      left: MediaQuery.of(context).size.width * 0.05,
                      // right: 20,
                      right: MediaQuery.of(context).size.width * 0.05,
                      // top: 20,
                      top: MediaQuery.of(context).size.height * 0.025,
                      // bottom: 10,
                      bottom: MediaQuery.of(context).size.height * 0.0125,
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  MediaQuery.of(context).size.width * 0.045),
                              side: BorderSide(color: Colors.blue)),
                        ),
                      ),
                      // onPressed: () => launchEmail(
                      //   name: name,
                      //   toEmail: email,
                      //   subject: subject,
                      //   message: message,
                      // ),
                      // onPressed: () => sendEmail(
                      //     name: name.text,
                      //     email: email.text,
                      //     subject: subject.text,
                      //     message: message.text),
                      child: Text(
                        'Send Email',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () async {
                        if (name.text.isNotEmpty &&
                            email.text.isNotEmpty &&
                            subject.text.isNotEmpty &&
                            message.text.isNotEmpty) {
                          // var ans = response.statusCode;
                          final response = await sendEmail(
                              userId: documentSnapshot!['userId'],
                              serviceId: documentSnapshot['serviceId'],
                              templateId: documentSnapshot['templateId'],
                              name: name.text,
                              email: email.text,
                              subject: subject.text,
                              message: message.text);
                          // var ans = response.statusCode;
                          ScaffoldMessenger.of(context).showSnackBar(
                            response == 200
                                ? const SnackBar(
                                    content: Text('Email Sent!'),
                                    backgroundColor: Colors.green)
                                : const SnackBar(
                                    content: Text('Failed to send Email!'),
                                    backgroundColor: Colors.red),
                          );
                          name.clear();
                          email.clear();
                          message.clear();
                          subject.clear();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text('Enter Details'),
                            backgroundColor: Colors.green,
                            duration: Duration(milliseconds: 500),
                          ));
                        }
                      },
                    ),
                  );
                } else {
                  // return CircularProgressIndicator();
                  return Container(
                    height: 35,
                  );
                }
              },
            ),

            Divider(
              color: Colors.black,
            ),

            SizedBox(
              // height: 15,
              height: MediaQuery.of(context).size.height * 0.01875,
            ),

            //

            //

            //

            Container(
              // width: 350,
              width: MediaQuery.of(context).size.width * 0.91,
              // height: 200,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                  // color: Color.fromARGB(255, 23, 79, 106),
                  color: Color.fromARGB(255, 36, 124, 167),
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.05),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 100, 179, 252),
                      offset: Offset(0.0, 2.0), //(x,y)
                      blurRadius: MediaQuery.of(context).size.width * 0.025,
                    )
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01),
                    child: Text(
                      'Follow Us',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                  ),
                  buildSocialButtons(),

                  //

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(FontAwesomeIcons.facebook, color: Colors.blue,),
                      Icon(
                        Icons.email,
                        color: Color.fromARGB(255, 237, 9, 85),
                        size: 35,
                      ),

                      SizedBox(
                        // width: 10,
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      // Text('Web'),
                      // InkWell(
                      //     child: new Text('Open Website'),
                      //     onTap: () => launch(
                      //         'https://docs.flutter.io/flutter/services/UrlLauncher-class.html')),
                      RichText(
                        text: new TextSpan(
                          text: 'bilthchron@iitgn.ac.in',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Circular'),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              // launch('https://blithchron.iitgn.ac.in/');
                              launch(
                                  "mailto:<bilthchron@iitgn.ac.in>?subject=Blith&body=Hello");
                            },
                        ),
                      ),
                    ],
                  ),

                  //

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(FontAwesomeIcons.facebook, color: Colors.blue,),
                      Icon(
                        FontAwesomeIcons.weebly,
                        color: Colors.green,
                        size: 35,
                      ),
                      SizedBox(
                        // width: 10,
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      // Text('Web'),
                      // InkWell(
                      //     child: new Text('Open Website'),
                      //     onTap: () => launch(
                      //         'https://docs.flutter.io/flutter/services/UrlLauncher-class.html')),
                      RichText(
                        text: new TextSpan(
                          text: 'blithchron.iitgn.ac.in',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontFamily: 'Circular'),
                          recognizer: new TapGestureRecognizer()
                            ..onTap = () {
                              launch('https://blithchron.iitgn.ac.in/');
                            },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }

  // Future lauchEmail({
  //   required String name,
  //   required String toEmail,
  //   required String subject,
  //   required String message,
  // }) async {
  //   final url =
  //       'mailto:$toEmail?subject=${Uri.encodeFull(subject)}&body=${Uri.encodeFull(message)}';
  // }

  // final CollectionReference _ids =
  //     FirebaseFirestore.instance.collection('emailJSIDs');

  // final Stream<QuerySnapshot> _ids =
  //     FirebaseFirestore.instance.collection('emailJSIDs').snapshots();

  Future sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
    required String serviceId,
    required String templateId,
    required String userId,
  }) async {
    // stream:
    // _ids.snapshots();
    // // // Stream<QuerySnapshot<Object?>> streamSnapshot = _ids.snapshots();
    // final QueryDocumentSnapshot<Object?>? documentSnapshot =
    //     streamSnapshot.data?.docs[0];

    // final userID = snap
    // final serviceId = documentSnapshot['serviceID'];

    // final serviceId = serviceId;
    // final templateId = 'template_slpnky6';
    // final userId = 'HfXb0kMj04HSOfZ_f';

    // final serviceId = 'service_rykxkqc';
    // final templateId = 'template_slpnky6';
    // final userId = 'HfXb0kMj04HSOfZ_f';

    // ignore: unused_local_variable
    //  final value =await  prefs.get(key) ?? 0;

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'origin': 'http://localhost'
      },
      body: json.encode(
        {
          'service_id': serviceId,
          'template_id': templateId,
          'user_id': userId,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
          },
        },
      ),
    );

    return response.statusCode;
  }

  Widget buildSocialButton({
    required IconData icon,
    Color? color,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        child: Container(
          // width: 35,
          width: MediaQuery.of(context).size.width * 0.091,
          // height: 35,
          height: MediaQuery.of(context).size.height * 0.04375,
          child: Center(
              child: FaIcon(
            icon,
            color: color,
            size: 35,
          )),
        ),
        onTap: onClicked,
      );

  Future share1(SocialMedia socialPlatform) async {
    final subject = 'Hello';
    final text = 'My';
    final urlShare = Uri.encodeComponent(
        'https://www.youtube.com/channel/UCpdqWQeOuk1-p1t8r9Ee_VA');
    var whatsapp1 = "";

    final urls = {
      SocialMedia.facebook: 'https://www.facebook.com/Blithchron/',
      SocialMedia.twitter: 'https://twitter.com/blithchroniitgn',
      SocialMedia.email:
          'https://mail.google.com/mail/u/0/#inbox?compose=GTvVlcSDbSRLKRWqqgmFZLVXxRlmPflmrlzWLFjxtBdCNQBrmqKKMNkJmjvjTlwxXZlpJxZVBwFMM',
      SocialMedia.linkedin:
          'https://www.linkedin.com/company/blithchron-iit-gandhinagar/mycompany/',
      // SocialMedia.linkedin:
      //     'https://www.linkedin.com/shareArticle?mini=true&url=$urlShare',
      // SocialMedia.whatsapp: 'https://www.whatsapp.com/',
      SocialMedia.whatsapp: 'whatsapp://send?phone=$whatsapp1&text=$subject',
      SocialMedia.instagram: 'https://www.instagram.com/blithchron_iitgn/',
      SocialMedia.youtube:
          'https://www.youtube.com/channel/UCpdqWQeOuk1-p1t8r9Ee_VA',
    };

    final url = urls[socialPlatform]!;

    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  Widget buildSocialButtons() => Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.091,
          right: MediaQuery.of(context).size.width * 0.091,
          // top: 5,
          top: MediaQuery.of(context).size.height * 0.00625,
          // bottom: 5,
          bottom: MediaQuery.of(context).size.height * 0.00625,
        ),
        child: Card(
          color: Colors.white,
          elevation: 10,
          child: Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.021),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildSocialButton(
                    icon: FontAwesomeIcons.instagram,
                    color: Colors.pink,
                    onClicked: () => share1(SocialMedia.instagram)),
                SizedBox(
                  // width: 10,
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.twitter,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.twitter)),
                SizedBox(
                  // width: 10,
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.youtube,
                    color: Colors.red,
                    onClicked: () => share1(SocialMedia.youtube)),
                SizedBox(
                  // width: 10,
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.facebook,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.facebook)),
                SizedBox(
                  // width: 10,
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                buildSocialButton(
                    icon: FontAwesomeIcons.linkedin,
                    color: Colors.blue,
                    onClicked: () => share1(SocialMedia.linkedin)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.025,
                ),
                // buildSocialButton(
                //     icon: FontAwesomeIcons.whatsapp,
                //     color: Colors.green,
                //     onClicked: () => share1(SocialMedia.whatsapp)),
                // SizedBox(
                //   width: 10,
                // ),
                // buildSocialButton(
                //   // icon: FontAwesomeIcons.phone,
                //   icon: Icons.phone,
                //   color: Colors.black,
                //   onClicked: () async {
                //     var whatsapp1 = "+919714649511";
                //     launch('tel://$whatsapp1');
                //   },
                // ),
              ],
            ),
          ),
        ),
      );
}
