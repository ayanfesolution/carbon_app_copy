import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import '../support/customer_support.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String userFirstName = 'Ayanfe';
  bool isBottomSheetVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    height: 60,
                    child: Image.asset('assets/images/carbon_long_logo.png'),
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (context) {
                              return bottomPopUpWidgetOfHelp();
                            });
                      },
                      icon: const Icon(CupertinoIcons.question_circle_fill))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome Back, \n$userFirstName!',
                          style: ccMainTitleStyle,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: SizedBox(
                            width: 250,
                            child: Text(
                                'Enter your PIN to continue to your Carbon account.'),
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      child: Image.asset('assets/images/secondprofile.png',
                          fit: BoxFit.fill),
                    )
                  ],
                ),
              ),
              TextButton(
                onPressed: () {
                  showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context) {
                        return bottomPopUpWidgetOfHelp();
                      });
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Forget PIN?',
                    style: ccNormalBoldText,
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          left: BorderSide(color: ccPrimaryColor),
                          right: BorderSide(color: ccPrimaryColor),
                          top: BorderSide(color: ccPrimaryColor),
                          bottom: BorderSide(color: ccPrimaryColor)),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Icon(
                    Icons.fingerprint_rounded,
                    color: ccPrimaryColor,
                    size: 50,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not $userFirstName?',
                      style: ccNormalBoldText,
                    ),
                    TextButton(
                        onPressed: (() {}),
                        child: const Text(
                          'Sign out',
                          style: ccNormalBoldText,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget bottomPopUpWidgetOfHelp() {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(20), right: Radius.circular(20)),
          color: Colors.white),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const ListTile(
            title: Text(
              'Having issues logging in?',
              style: ccMainTitleStyle,
            ),
          ),
          const Divider(
            thickness: 2.5,
          ),
          ListTile(
            title: const Text('I forgot my PIN'),
            leading: const Icon(
              CupertinoIcons.lock_circle_fill,
              color: ccPrimaryColor,
              size: 35,
            ),
            trailing: const Icon(Icons.forward),
            onTap: () {
              ccNavigateToNextPage(context, const ContactCustomerSupport());
            },
          ),
          const Divider(
            thickness: 2.5,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: ListTile(
              title: const Text('Get in touch with us'),
              leading: const Icon(
                CupertinoIcons.lock_circle_fill,
                color: ccPrimaryColor,
                size: 35,
              ),
              trailing: const Icon(Icons.forward),
              onTap: () {
                ccNavigateToNextPage(context, const ContactCustomerSupport());
              },
            ),
          ),
        ],
      ),
    );
  }
}
