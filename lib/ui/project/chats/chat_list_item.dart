import 'package:dello/constants/dimension_constants.dart';
import 'package:dello/constants/string_constants.dart';
import 'package:dello/ui/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CachedImage(
            currentUserAvatar,
            height: 50,
            width: 50,
            radius: 15,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Mark Ruffalow",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      height: 1,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "10:53 PM",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1,
                      letterSpacing: 0.3,
                      color:
                          Theme.of(context).primaryColorDark.withOpacity(0.5),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                constraints: BoxConstraints(
                  maxWidth: 300,
                ),
                child: Text(
                  "This is a big message This is a big message This is a big message This is a big message This is a big message This is a big message This is a big message This is a big message This is a big message",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: dimen15),
              Container(
                height: 50,
                constraints: BoxConstraints(
                  maxWidth: 300,
                ),
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor.withAlpha(50),
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(right: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      alignment: Alignment.center,
                      child: Text(
                        "company_logo.jpg",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
