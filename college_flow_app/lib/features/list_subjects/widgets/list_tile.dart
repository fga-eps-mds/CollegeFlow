import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class ListTileGenerate extends StatelessWidget {
  final String subjectTitle;
  final String subjectSubtitle;
  const ListTileGenerate({
    Key? key,
    required this.subjectTitle,
    required this.subjectSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
        visualDensity: VisualDensity(vertical: -4),
        horizontalTitleGap: 16.0,
        textColor: colorBlack,
        iconColor: colorBlack,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: colorDarkWhite, width: 1),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
            bottomRight: Radius.circular(5),
            bottomLeft: Radius.circular(5)
          )
        ),
        tileColor: colorLightWhite,
        selectedColor: colorSecondary,
        //TO DO (Luan): Colocar para receber subjectTitle
        title: Text(
          "Lorem ipsum dolor sit amet consectetur adipiscing elit",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'OctinCollege', 
            fontWeight: FontWeight.w600,
            fontSize: 14),
          ),
        //TO DO (Luan): Colocar para receber subjectSubtitle
        subtitle: Text(
          "Código • Curso",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 12),
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
    );
  }
  void setState(Null Function() param0) {}
}
