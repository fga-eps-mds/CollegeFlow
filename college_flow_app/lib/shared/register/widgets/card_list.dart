import 'package:college_flow_app/config/design_system/data/colors/colors.dart';
import 'package:flutter/material.dart';

class CardList extends StatelessWidget {
  final String titleCourse;
  final String codeCourse;
  const CardList({
    Key? key,
    required this.titleCourse,
    required this.codeCourse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isCheck = false;

    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: darkWhite),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CheckboxListTile(
        title: Text(titleCourse),
        subtitle: Text(codeCourse),
        value: isCheck,
        onChanged: (bool? newValue) {
          setState(() {
            isCheck = newValue;
          });
        },
      ),
    );
  }

  void setState(Null Function() param0) {}
}
