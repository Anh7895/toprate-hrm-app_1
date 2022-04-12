import 'package:toprate_hrm/blocs/login/login_bloc.dart';
import 'package:toprate_hrm/blocs/login/login_event.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/outline_border_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldLogin extends StatelessWidget {
  final LoginBloc? loginBloc;

  const TextFieldLogin({Key? key, this.loginBloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: height_27, bottom: height_8),
      child: Form(
          child: Column(
        children: [
          OutlineBorderTextField(
            cursorColor: ThemeColor.clr_1472C9,
            hintText: TextConstants.textNameLogin,
            hintStyle: TextStyle(
              color: ThemeColor.clr_898A8D,
              fontSize: fontSize_16,
              fontStyle: FontStyle.normal,
            ),
            maxLines: 1,
            borderInActiveColor: ThemeColor.clr_DADADA,
            borderActiveColor: ThemeColor.clr_1472C9,
            labelText: TextConstants.textNameLogin,
            fontSize: fontSize_16,
            labelColor: ThemeColor.clr_757875,
            labelFontSize: fontSize_16,
            borderRadius: radius_8,
            focusNode: loginBloc!.focusNodeEmail,
            textEditingController: loginBloc!.emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            autofocus: false,
            onFieldSubmitted: (v){
              FocusScope.of(context).requestFocus(loginBloc!.focusNodePassword);
            },
            checkOfErrorOnFocusChange: true,
            inputFormatters: [
              FilteringTextInputFormatter.deny(RegExp('[ ]')),
              // LengthLimitingTextInputFormatter(18),
              // FilteringTextInputFormatter.digitsOnly
            ],
            validation: (textToValidate) {
              return '';
            },
          ),
          SizedBox(
            height: height_16,
          ),
          OutlineBorderTextField(
            cursorColor: ThemeColor.clr_1472C9,
            hintText: TextConstants.textPassword,
            hintStyle: TextStyle(
              color: ThemeColor.clr_898A8D,
              fontSize: fontSize_16,
              fontStyle: FontStyle.normal,
            ),
            maxLines: 1,
            borderInActiveColor: ThemeColor.clr_DADADA,
            borderActiveColor: ThemeColor.clr_1472C9,
            labelText: TextConstants.textPassword,
            fontSize: fontSize_16,
            suffixIcon: IconButton(
              icon: Icon(
                loginBloc!.isObscure ? Icons.visibility_off : Icons.visibility,
                color: ThemeColor.clr_84888D,
              ),
              onPressed: () {
                loginBloc!.add(ChangeObscureEvent());
              },
            ),
            labelColor: ThemeColor.clr_757875,
            labelFontSize: fontSize_16,
            borderRadius: radius_8,
            focusNode: loginBloc!.focusNodePassword,
            textEditingController: loginBloc!.passwordController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            obscureText: loginBloc!.isObscure,
            autofocus: false,
            checkOfErrorOnFocusChange: true,
            inputFormatters: [
              FilteringTextInputFormatter.deny(RegExp('[ ]')),
              // LengthLimitingTextInputFormatter(18),
              // FilteringTextInputFormatter.digitsOnly
            ],
            validation: (textToValidate) {
              return '';
            },
          ),
        ],
      )),
    );
  }
}
