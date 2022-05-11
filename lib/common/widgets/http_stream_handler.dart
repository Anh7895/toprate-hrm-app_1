import 'dart:io';

import 'package:toprate_hrm/common/dialog/bottom_sheet_dialog_utils.dart';
import 'package:toprate_hrm/common/resource/name_image.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/utils/preference_utils.dart';
import 'package:toprate_hrm/common/widgets/base_button.dart';
import 'package:toprate_hrm/common/widgets/images/svg_image_widget.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toprate_hrm/common/config/routers_name.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/multi_language/internationalization.dart'
    as language;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/exceptions/network_connection_exception.dart';

import '../multi_language/internationalization.dart';
import 'base_screen.dart';

///
/// An utility [Widget] takes responsibility for handling events and errors in a [Stream]
/// of http responses, base on BlocConsumer Widget
///
///
BaseOptions options = new BaseOptions(
  baseUrl:
      'https://iam-hr.toprate.io/auth/realms/master/protocol/openid-connect/',
  connectTimeout: 5000,
  receiveTimeout: 3000,
  headers: {
    "Accept": "application/json",
    "Content-Type": "application/x-www-form-urlencoded"
  },
);

class HttpStreamHandler<B extends Bloc<dynamic, S>, S extends BaseState>
    extends StatefulWidget {
  final B? bloc;
  final BlocWidgetBuilder<S> builder;
  final Function(BuildContext context, S state)? listener;
  final bool? isNeedReset;
  final S? state;

  const HttpStreamHandler(
      {Key? key,
      required this.builder,
      required this.listener,
      this.bloc,
      this.state,
      this.isNeedReset = false})
      : super(key: key);

  @override
  _HttpStreamHandler<B, S> createState() => _HttpStreamHandler<B, S>();
}

class _HttpStreamHandler<B extends Bloc<dynamic, S>, S extends BaseState>
    extends State<HttpStreamHandler<B, S>> {
  @override
  void initState() {
    super.initState();
    _subscribe();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isNeedReset!) {
      _subscribe();
    }
    return BlocConsumer<B, S>(
        bloc: widget.bloc, builder: widget.builder, listener: widget.listener!);
  }

  void _subscribe() {
    widget.bloc?.stream.listen((state) async {
      if (state is StartCallApiState) {
        // BaseScreen.showLoading(context);
      } else if (state is ApiSuccessState) {
        // BaseScreen.hideLoading(context);
      } else if (state is HideLoadingState) {
        // BaseScreen.hideLoading(context);
      } else if (state is ApiErrorState) {
        // BaseScreen.hideLoading(context);
        var _errorCode = state.errorCode;
        var _errorMessage = state.errorMessage;
        var _errorDescription = state.errorDescription;
        var err = state.error;
        if (err is DioError) {
          if (err.response?.statusCode == HttpStatus.unauthorized ||
              err.response?.statusCode == HttpStatus.forbidden) {
            showAlert(context, TextConstants.textFailed, TextConstants.text106Err, icon: ic_error,nameButton: "close");
          } else if (err.response?.statusCode ==
              HttpStatus.internalServerError) {
            showAlert(context, TextConstants.textFailed, TextConstants.text106Err, icon: ic_error,nameButton: "close");
          } else if (err.type == DioErrorType.connectTimeout ||
              err.type == DioErrorType.receiveTimeout) {
            _mappingError(
                _errorCode ?? "", TextConstants.text109Err, _errorDescription ?? "");
          } else {
            print("Err $err");
            _mappingError(
                _errorCode ?? "", _errorMessage ?? "", _errorDescription ?? "");
          }
        } else {
          _mappingError(
              _errorCode ?? "", _errorMessage ?? "", _errorDescription ?? "");
        }
      }
    }, onError: (onError) {
      showAlert(context, TextConstants.textFailed, TextConstants.text106Err, icon: ic_error,nameButton: "close");;
    }, onDone: () {}, cancelOnError: true);
  }

  //Save Token Login
  saveToken(String? accessToken) async {
    return await PreferenceUtils.setString("access_token", accessToken ?? "");
  }

  //Save Refresh Token
  saveRefreshToken(String? refreshToken) async {
    return await PreferenceUtils.setString("refresh_token", refreshToken ?? "");
  }

  void _mappingError(
      String errorCode, String errorMessage, String errorDescription) {
    var _transformMessage = "";
    if (errorMessage == TextConstants.textSystemIsBusyPleaseTryAgainLater) {
      _transformMessage = language.S
          .of(context)
          .translate(TextConstants.textSystemIsBusyPleaseTryAgainLater);
      showAlert(context, TextConstants.textFailed, TextConstants.text106Err, icon: ic_error,nameButton: "close");
    } else if (errorMessage ==
        TextConstants.textNoConnectionPleaseCheckYourConnectionAndTryAgain) {
      _transformMessage = language.S.of(context).translate(
          TextConstants.textNoConnectionPleaseCheckYourConnectionAndTryAgain);
      showAlert(context, TextConstants.textFailed, TextConstants.text106Err, icon: ic_error,nameButton: "close");
    } else {
      showAlert(context, TextConstants.textFailed, TextConstants.text106Err, icon: ic_error,nameButton: "close");
    }
  }
}

String handleResponseError(error) {
  print(error);
  if (error is DioError) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        // TODO: Handle this case.
        break;
      case DioErrorType.sendTimeout:
        return TextConstants.textSystemIsBusyPleaseTryAgainLater;
      case DioErrorType.receiveTimeout:
        // TODO: Handle this case.
        break;
      case DioErrorType.response:
        break;
      case DioErrorType.cancel:
        // TODO: Handle this case.
        break;
      case DioErrorType.other:
        // TODO: Handle this case.
        break;
    }
  } else if (error is NetworkConnectionException) {
    return TextConstants.textNoConnectionPleaseCheckYourConnectionAndTryAgain;
  } else if (error is SocketException) {
    return TextConstants.textSystemIsBusyPleaseTryAgainLater;
  } else if (error is PlatformException) {
    return error.message!;
  }

  return TextConstants.textSystemIsBusyPleaseTryAgainLater;
}

showAlert(BuildContext context, String title, String message,
    {Function(BuildContext)? onDismiss, bool? dismissible, bool? canPop, String? icon, String? nameButton}) {
  final mediaData = MediaQuery.of(context);
  showDialog(
      barrierDismissible: dismissible ?? true,
      context: context,
      builder: (c) => WillPopScope(
            onWillPop: () => Future.value(canPop ?? true),
            child: MediaQuery(
              // prevent UI broken when text-scale is changed by system
              data: mediaData.copyWith(textScaleFactor: 1.0),
              child: Dialog(
                insetPadding: EdgeInsets.symmetric(horizontal: width_20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      icon!=''?SVGImageWidget(
                        height: height_72,
                        width: width_72,
                        url: icon,
                      ):Container(),
                      SizedBox(
                        height: height_20,
                      ),
                      Text(title,
                          style: TextStyleCommon.textHeaderDialogStyle(context),
                          textAlign: TextAlign.center),
                      SizedBox(
                        height: height_20,
                      ),
                      Text(
                        message,
                        style: TextStyleCommon.textMessageDialogStyle,
                        textAlign: TextAlign.center,
                      ),
                     message!=""?SizedBox(height: height_20,):Container(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: width_16),
                        child: BaseButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          backgroundColor: ThemeColor.clr_CE6161,
                          title: nameButton!=""?S.of(context).translate(nameButton??""):S.of(context).translate("submit"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )).whenComplete(() {
    if (onDismiss != null) {
      onDismiss(context);
    }
  });
}
