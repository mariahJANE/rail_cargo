import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  final icons;
  final option;
  const SettingsTile({super.key, required this.icons, this.option});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(icons),
                    SizedBox(width: 10),
                    Text(option),
                  ],
                ),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ),
        ),
        SizedBox(height: 5,),
        Divider(thickness: 1.5,height: .5,)
      ],
    );
  }
}
