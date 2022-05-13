import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:openapi/openapi.dart';
import 'package:toprate_hrm/blocs/day_off/day_off_bloc.dart';

import '../../../blocs/base_state/base_state.dart';
import '../../../common/multi_language/internationalization.dart';
import '../../../common/resource/sizes.dart';
import '../../../common/resource/text_style.dart';
import '../../../common/resource/theme_color.dart';
import '../../../common/widgets/base_button.dart';
import '../../../common/widgets/http_stream_handler.dart';

class ItemApprove extends StatelessWidget {
  final DayOffBloc dayOffBloc;

  const ItemApprove({required this.dayOffBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: height_20,
          ),
          Text(S.of(context).translate("approver"),
              style: TextStyleCommon.textTitleStyle),
          SizedBox(
            height: height_15,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Tags(
                    alignment: WrapAlignment.start,
                    itemCount: dayOffBloc.listEmailSettings.length,
                    // required
                    itemBuilder: (int index) {
                      return dayOffBloc.listEmailSettings != []
                          ? ItemTags(
                        color: ThemeColor.clr_FEC0C1,
                        active: false,
                        pressEnabled: false,
                        textColor: ThemeColor.clr_2D3142,
                        // Each ItemTags must contain a Key. Keys allow Flutter to
                        // uniquely identify widgets.
                        key: Key(index.toString()),
                        index: index,
                        // required
                        padding: EdgeInsets.all(height_15),
                        title: dayOffBloc.listEmailSettings[index].email!,
                        textStyle: TextStyle(
                          fontSize: fontSize_12,
                        ),
                        combine: ItemTagsCombine.withTextBefore,
                        //
                        removeButton:
                        (dayOffBloc.listEmailSettings[index].id == null)
                            ? ItemTagsRemoveButton(
                          icon: Icons.remove_circle_outline,
                          color: ThemeColor.clr_CE6161,
                          backgroundColor:
                          ThemeColor.clr_FEC0C1,
                          size: height_16,
                          onRemoved: () {
                            dayOffBloc.add(RemovedMailEvent(
                                index: index,
                                isChecked: false));
                            //required
                            return true;
                          },
                        )
                            : null,
                        // OR null,
                        onPressed: null,
                        onLongPressed: null,
                      )
                          : SizedBox(
                        width: width_12,
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  child: IconButton(
                    onPressed: () {
                      dayOffBloc.add(InitDataListMailEvent());
                      _showDialog(context);
                    },
                    icon: Icon(Icons.add_circle_outline_outlined),
                    color: ThemeColor.clr_D6D9E0,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  _showDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (context) {
        return AlertDialog(
          insetPadding: EdgeInsets.symmetric(horizontal: width_20 ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius_10),
          ),
          content: HttpStreamHandler<DayOffBloc, BaseState>(
              bloc: dayOffBloc,
              listener: (context, state) {},
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Container(
                    height: height_450,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height_20),
                          child: Text(
                            S.of(context).translate("textSelectMorePeople"),
                            style: TextStyle(
                                fontSize: fontSize_20,
                                color: ThemeColor.clr_4C5980,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: double.infinity,
                          height: 40,
                          child: TextField(
                            cursorColor: ThemeColor.clr_D8D8D8,
                            controller: dayOffBloc.searchController,
                            onChanged: ((value) {
                              dayOffBloc.add(SearchMailEvent(value: value));
                            }),
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  size: height_25,
                                  color: ThemeColor.clr_D8D8D8,
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ThemeColor.clr_D8D8D8),
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: BouncingScrollPhysics(),
                              itemCount: dayOffBloc.searchList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return _buildItem(index, state);
                              }),
                        ),
                        Container(
                          child: GestureDetector(
                            onTap: () {
                                dayOffBloc.add(AddListEmailApproversEvent(
                                    emailSettings: dayOffBloc.searchList
                                        .where((element) => element.isChecked)
                                        .map((e) {
                                      EmailSettingsBuilder emailSettingBuilder =
                                      EmailSettingsBuilder();
                                      emailSettingBuilder.email =
                                          e.userProject?.user?.email;
                                      return emailSettingBuilder.build();
                                    }).toList()));
                              dayOffBloc.searchController.text = "";
                              Navigator.pop(context);
                            },
                            child: BaseButton(
                              height: height_56,
                              title: S.of(context).translate("OK"),
                              style: TextStyleCommon.textButtonStyle(context),
                              backgroundColor: ThemeColor.clr_CE6161,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        );
      },
    );
  }

  Widget _buildItem(int index, BaseState state) {
    return GestureDetector(
      onTap: () {
        dayOffBloc.add(SelectMailApproverEvent(index: index));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: height_4),
        padding: EdgeInsets.all(height_8),
        decoration: BoxDecoration(
            color: dayOffBloc.searchList[index].isChecked
                ? ThemeColor.clr_FFEBEB
                : Colors.white,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Text(dayOffBloc.searchList[index].userProject?.user?.email ?? "",style: TextStyleCommon.textNormalStyle,),
            Spacer(),
            dayOffBloc.searchList[index].isChecked
                ? Icon(
              Icons.check_circle_outline,
              size: height_20,
              color: ThemeColor.clr_FF9B90,
            )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
