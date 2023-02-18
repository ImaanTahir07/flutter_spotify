import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_spotify/view/constants/colors.dart';
import 'package:flutter_spotify/view/data/data.dart';
import 'package:flutter_spotify/view/widgets/myText.dart';

class singerListView extends StatefulWidget {
  const singerListView({super.key});

  @override
  State<singerListView> createState() => _singerListViewState();
}

class _singerListViewState extends State<singerListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) =>
          Divider(height: 1, thickness: 0.5, color: Colors.grey.shade700),
      itemCount: singersList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListTile(
            subtitle: MyText(
                txt: "Artist",
                color: Colors.grey.shade700,
                fontSize: 13,
                fontWeight: FontWeight.w400),
            title: MyText(
                txt: singersList[index]['name'],
                color: whiteClr,
                fontSize: 17,
                fontWeight: FontWeight.w500),
            leading: Container(
              child: Image.asset(singersList[index]['image']),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }
}
