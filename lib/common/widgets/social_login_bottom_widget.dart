import 'dart:io';

import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';

import 'social_login_button_widget.dart';

class GroupSocialScreen extends StatefulWidget {
  final bool? showFacebook;
  final bool? showGoogle;
  final callBackGoogle;
  final callBackFacebook;
  final callBackApple;
  final Axis? direction;
  final Alignment? alignment;
  final WrapAlignment? wrapAlignment;

  const GroupSocialScreen(
      {Key? key,
      this.showFacebook = true,
      this.showGoogle = true,
      required this.callBackGoogle,
      required this.callBackFacebook,
      required this.callBackApple,
      this.direction,
      this.alignment,
      this.wrapAlignment})
      : super(key: key);

  @override
  _GroupSocialScreenState createState() => _GroupSocialScreenState();
}

class _GroupSocialScreenState extends State<GroupSocialScreen> {
  /// Init google signIn config
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/userinfo.profile',
    ],
  );

  // FacebookLogin _facebookSignIn = FacebookLogin();

  /// Init google listener
  ///
  doLoginGoogle() {
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      account!.authentication.then((au) {
        widget.callBackGoogle!(au.accessToken!);
      }).catchError((error, stackTrace) {});
    });
  }

  ///Handle do login facebook
  // Future<Null> handleLoginFacebook() async {
  //   _facebookSignIn.logOut();
  //   final FacebookLoginResult result =
  //       await _facebookSignIn.logIn(['email', 'public_profile']);
  //
  //   switch (result.status) {
  //     case FacebookLoginStatus.loggedIn:
  //       final FacebookAccessToken accessToken = result.accessToken;
  //       print('''
  //        Logged in!
  //
  //        Token: ${accessToken.token}
  //        User id: ${accessToken.userId}
  //        Expires: ${accessToken.expires}
  //        Permissions: ${accessToken.permissions}
  //        Declined permissions: ${accessToken.declinedPermissions}
  //        ''');
  //       widget.callBackFacebook(result.accessToken);
  //       break;
  //     case FacebookLoginStatus.cancelledByUser:
  //       print('Login cancelled by the user.');
  //       break;
  //     case FacebookLoginStatus.error:
  //       print('Something went wrong with the login process.\n'
  //           'Here\'s the error Facebook gave us: ${result.errorMessage}');
  //       break;
  //   }
  // }

  ///Handle get accessToken google
  ///
  Future<void> handleLoginGoogle() async {
    _googleSignIn.signOut();
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      _googleSignIn.signInSilently();
      print(error);
    }
  }

  @override
  void initState() {
    doLoginGoogle();

    _googleSignIn.signInSilently();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: widget.alignment ?? Alignment.bottomCenter,
      child: Wrap(
        // direction: widget.direction ?? Axis.horizontal,
        // alignment: widget.wrapAlignment ?? WrapAlignment.center,
        children: [
          widget.callBackGoogle != null
              ? SocialLoginButton(
                  loginName: "Login",
                  styleName: TextStyleCommon.textStyleButtonWelcome,
                  imageAssetsPng: png_ic_google,
                  doLogin: () {
                    print("Login");
                    handleLoginGoogle();
                  },
                )
              : SizedBox(),
          widget.callBackFacebook != null
              ? SocialLoginButton(
                  loginName: "Facebook",
                  imageAssetsPng: png_ic_google,
                  doLogin: () {
                    // handleLoginFacebook();
                  },
                )
              : SizedBox(),
          Platform.isIOS
              ? SocialLoginButton(
                  loginName: "Apple",
                  imageAssetsPng: png_ic_google,
                  doLogin: () async {
                    final credential =
                        await SignInWithApple.getAppleIDCredential(
                      scopes: [
                        AppleIDAuthorizationScopes.email,
                        AppleIDAuthorizationScopes.fullName,
                      ],
                    );
                    widget.callBackApple!(credential.identityToken!);
                  },
                )
              : SizedBox()
        ],
      ),
    );
  }
}
