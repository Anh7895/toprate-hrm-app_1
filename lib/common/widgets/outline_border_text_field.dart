import 'dart:core';
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';

class OutlineBorderTextField extends StatefulWidget {
  FocusNode focusNode;
  TextEditingController textEditingController;
  String? labelText, hintText;
  TextInputType keyboardType;
  bool autofocus = false;
  TextInputAction textInputAction;
  ValueChanged<String>? onFieldSubmitted;
  ValueChanged<String>? onchange;
  List<TextInputFormatter> inputFormatters;
  Function validation;
  bool checkOfErrorOnFocusChange =
      false; //If true validation is checked when evre focus is changed
  Color? borderActiveColor, borderInActiveColor, errorColor, color, labelColor, hintColor, fillColor;
  double? fontSize, labelFontSize, errorFontSize;
  double? borderRadius, borderWidth, width, height;
  bool? enableInteractiveSelection;
  bool? obscureText = false;
  int? maxLines = 1;
  int? maxLength;
  Widget? suffixIcon;
  TextStyle? hintStyle, textFieldStyle;
  Color? cursorColor;
  bool? enabled;

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _OutlineBorderTextField();
  }

  OutlineBorderTextField({
    this.labelText,
    this.hintText,
    required this.autofocus,
    required this.textEditingController,
    required this.focusNode,
    required this.inputFormatters,
    required this.keyboardType,
    required this.textInputAction,
    this.onFieldSubmitted,
    required this.validation,
    required this.checkOfErrorOnFocusChange,
    this.borderActiveColor,
    this.borderInActiveColor,
    this.errorColor,
    this.color,
    this.labelColor,
    this.hintColor,
    this.fillColor,
    this.fontSize,
    this.labelFontSize,
    this.errorFontSize,
    this.borderRadius,
    this.borderWidth,
    this.obscureText,
    this.maxLength,
    this.maxLines,
    this.suffixIcon,
    this.hintStyle,
    this.cursorColor,
    this.enableInteractiveSelection,
    this.onchange,
    this.enabled,
    this.textFieldStyle,
  });
}

class _OutlineBorderTextField extends State<OutlineBorderTextField> {
  bool isError = false;
  String? errorString = "";

  getLabelTextStyle() {
    return TextStyle(fontSize: widget.labelFontSize, color: widget.labelColor, fontWeight: FontWeight.normal);
  } //label text style

  getHintStyle() {
    return TextStyle(color: widget.hintColor);
  } //hint style

  getTextFieldStyle() {
    return widget.textFieldStyle ?? TextStyle(
      fontSize: widget.fontSize,
      color: widget.color,
    );
  } //textfield style

  getErrorTextFieldStyle() {
    return TextStyle(
      fontSize: widget.errorFontSize,
      color: widget.errorColor,
    );
  } // Error text style

  getBorderColor(focus) {
    return focus
        ? widget.borderActiveColor ?? Colors.deepPurple
        : widget.borderInActiveColor ?? Colors.black54;
  } //Border colors according to focus

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          FocusScope(
            child: Focus(
              onFocusChange: (focus) {
                //Called when ever focus changes
                print("focus: $focus");
                setState(() {
                  getBorderColor(focus);
                  if (widget.checkOfErrorOnFocusChange &&
                      widget
                          .validation(widget.textEditingController.text)
                          .toString()
                          .isNotEmpty) {
                    isError = true;
                    errorString =
                        widget.validation(widget.textEditingController.text);
                  } else {
                    isError = false;
                    errorString =
                        widget.validation(widget.textEditingController.text);
                  }
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    color: widget.fillColor ?? ThemeColor.clr_FFFFFF,
                    borderRadius: BorderRadius.all(Radius.circular(
                            widget.borderRadius ??
                                0) //                 <--- border radius here
                        ),
                    border: Border.all(
                      width: widget.borderWidth ?? width_1,
                      style: BorderStyle.solid,
                      color: isError
                          ? widget.errorColor ?? Colors.red
                          : getBorderColor(widget.focusNode.hasFocus),
                    )),
                child: TextFormField(
                  cursorColor: widget.cursorColor,
                  onChanged: (value){
                    widget.onchange?.call(value);
                  },
                  enableInteractiveSelection: widget.enableInteractiveSelection ?? true,
                  focusNode: widget.focusNode,
                  maxLines: widget.maxLines,
                  maxLength: widget.maxLength,
                  controller: widget.textEditingController,
                  obscureText: widget.obscureText ?? false,
                  style: getTextFieldStyle(),
                  autofocus: widget.autofocus,
                  keyboardType: widget.keyboardType,
                  enabled: widget.enabled??true,
                  textInputAction: widget.textInputAction,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  inputFormatters: widget.inputFormatters,
                  validator: (string) {
                    if (widget
                        .validation(widget.textEditingController.text)
                        .toString()
                        .isNotEmpty) {
                      setState(() {
                        isError = true;
                        errorString = widget
                            .validation(widget.textEditingController.text);
                      });
                      return "";
                    } else {
                      setState(() {
                        isError = false;
                        errorString = widget
                            .validation(widget.textEditingController.text);
                      });
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintStyle:  widget.hintStyle,
                      hintText: widget.hintText  ,
                      fillColor: Colors.transparent,
                      suffixIcon: widget.suffixIcon ?? SizedBox(),
                      labelText: widget.labelText,
                      labelStyle: isError
                          ? getLabelTextStyle()
                          : getLabelTextStyle(),
                      filled: true,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(widget.borderRadius ?? 0),
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      errorStyle: TextStyle(height: 0),
                      focusedErrorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      floatingLabelBehavior: FloatingLabelBehavior.auto),
                ),
              ),
            ),
          ),
          Visibility(
              visible: isError ? true : false,
              child: Container(
                  padding: EdgeInsets.only(left: 15.0, top: 2.0),
                  child: Text(
                    errorString ?? "",
                    style: getErrorTextFieldStyle(),
                  ))),
        ],
      ),
    );
    ;
  }
}
