import 'package:flutter/material.dart';
import 'package:flutter_facebook_app/models/models.dart';
import 'package:flutter_facebook_app/widgets/widgets.dart';

class UserCard extends StatelessWidget {
  final User user;

  const UserCard({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ProfileAvatar(imageUrl: user.imageUrl),
          const SizedBox(width: 6.0),
          Flexible(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 16.0),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}