import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toprate_hrm/blocs/base_state/base_state.dart';
import 'package:toprate_hrm/blocs/user/user_bloc.dart';
import 'package:toprate_hrm/common/resource/sizes.dart';
import 'package:toprate_hrm/common/resource/strings.dart';
import 'package:toprate_hrm/common/resource/text_style.dart';
import 'package:toprate_hrm/common/resource/theme_color.dart';
import 'package:toprate_hrm/common/widgets/buttons.dart';
import 'package:toprate_hrm/common/widgets/http_stream_handler.dart';
import 'package:toprate_hrm/datasource/data/local_user_data.dart';

import '../../common/injector/injector.dart';
import '../../common/widgets/base_button.dart';
import '../login/login_screen.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserBloc _bloc = Injector.resolve<UserBloc>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HttpStreamHandler<UserBloc,BaseState>(
        bloc: _bloc,
        listener: (context, state) async{
          if(state is LogoutSuccessState){
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => LoginScreen()),
                    (Route<dynamic> route) => false);
          }
        },
        builder: (context,state){
          return Padding(
              padding: EdgeInsets.symmetric(horizontal: width_24, vertical: height_60),
              child: SingleChildScrollView(
                child: Column(
                  children:[
                    Container(
                      decoration: BoxDecoration(color: ThemeColor.clr_FFFFFF,
                      borderRadius: BorderRadius.circular(radius_16),
                        border: Border.all(color: ThemeColor.clr_CE6161)
                      ),
                       width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height,
                      child: Padding(
                        padding: EdgeInsets.all(width_20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(backgroundImage: NetworkImage(LocalUserData.getInstance.user?.avatarUrl),radius: radius_52,),
                            Text("${LocalUserData.getInstance.user?.firstName}",style: TextStyleCommon.textUserNameHeader,),
                            SizedBox(height:  height_45,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height_12,),
                    Container(
                      height: height_50,
                      width: width_325,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius_16),
                        border: Border.all(color: ThemeColor.clr_D6D9E0),

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Padding(
                            padding:  EdgeInsets.only(left: width_60),
                            child: Text(TextConstants.textChoose, style: TextStyleCommon.textUserChoose,),
                          ),

                          Container(
                            margin: EdgeInsets.only(right: width_10),
                            child: GestureDetector(
                                onTap: (){
                                  _showMyDialog(context);
                                },
                                child: Icon(Icons.keyboard_arrow_down_outlined,color: ThemeColor.clr_CE6161,)),
                          ),
                        ],
                      ),
                    ),
                    Container(

                      child: Column(children: [
                      BaseButton(

                        title: "Logout",
                        style: TextStyleCommon.textStyleWhiteNormalTitle,
                        backgroundColor: ThemeColor.clr_CE6161,
                        onPressed: (){
                          _bloc.add(LogoutEvent());
                        },
                      ),
                      BaseButton(
                        title: TextConstants.textSubmit,
                        backgroundColor: ThemeColor.clr_CE6161,
                        colorText: ThemeColor.clr_FFFFFF,
                        style: TextStyleCommon.textStyleUserButtonSubmit,
                      )
                    ],),)

                  ]
                )
              ),
          );
        },
      )
    );
  }


  _showMyDialog(BuildContext context) async {
    return await showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return HttpStreamHandler<UserBloc, BaseState>(
            bloc: _bloc,
            listener: (context, state) {},
            builder: (context, setState) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius_16),
                ),
                child: Container(
                  height: height_344,
                  width: width_336,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: height_20),
                        child: Text(
                          TextConstants.textWorkingMode,
                          style: TextStyleCommon.textStyleTitleDialog,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {

                                  },
                                  child: _buildItemListTask(index));
                            }),
                      ),
                      SizedBox(
                        height: height_15,
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: height_8),
                        child: GestureDetector(
                          onTap: () {

                          },
                          child: BaseButton(
                            height: height_45,
                            width: width_200,
                            title: TextConstants.textOk,
                            style: TextStyleCommon.textStyleWhiteNormalTitle,
                            backgroundColor: ThemeColor.clr_CE6161,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
  Widget _buildItemListTask(int index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: width_8, vertical: height_4),
      height: height_45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius_20)),
          color: ThemeColor.clr_FFEBEB),
      child: Container(
        margin: EdgeInsets.only(left: width_20),
        child: Row(
          children: [

            Container(
              margin: EdgeInsets.only(left: width_8),
              child: Text(
                "OK",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    color: ThemeColor.clr_4C5980,
                    fontSize: fontSize_16,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
