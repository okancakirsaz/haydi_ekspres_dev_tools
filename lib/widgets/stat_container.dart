import 'package:flutter/material.dart';
import 'package:haydi_ekspres_dev_tools/constants/color_consts.dart';
import 'package:haydi_ekspres_dev_tools/constants/padding_consts.dart';
import 'package:haydi_ekspres_dev_tools/constants/radius_consts.dart';
import 'package:haydi_ekspres_dev_tools/constants/text_consts.dart';

class StatContainer extends StatelessWidget {
  final String desc;
  final String value;
  const StatContainer({super.key, required this.desc, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: PaddingConsts.instance.all10,
      height: 60,
      decoration: BoxDecoration(
        color: ColorConsts.instance.background,
        boxShadow: ColorConsts.instance.shadow,
        borderRadius: RadiusConsts.instance.circularAll10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: PaddingConsts.instance.all10,
            child: Text(
              desc,
              textAlign: TextAlign.center,
              style: TextConsts.instance.regularBlack12,
            ),
          ),
          Padding(
            padding: PaddingConsts.instance.all10,
            child: Text(
              value,
              style: TextConsts.instance.regularBlack16Bold,
            ),
          )
        ],
      ),
    );
  }
}
