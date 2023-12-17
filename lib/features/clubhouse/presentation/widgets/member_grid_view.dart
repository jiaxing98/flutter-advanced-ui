import 'package:flutter/material.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/data/models/member.dart';
import 'package:flutter_ui_tutorial/features/clubhouse/presentation/widgets/image_container.dart';

class MemberGridView extends StatelessWidget {
  final SliverGridDelegateWithFixedCrossAxisCount gridDelegate;
  final ({double width, double height}) size;
  final List<Member> members;

  const MemberGridView({
    super.key,
    required this.gridDelegate,
    required this.size,
    required this.members,
  });

  factory MemberGridView.speakers({required List<Member> members}) {
    const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
      mainAxisSpacing: 20,
      crossAxisSpacing: 40,
      childAspectRatio: 0.8,
    );

    return MemberGridView(
      members: members,
      gridDelegate: gridDelegate,
      size: (width: 75, height: 75),
    );
  }

  factory MemberGridView.audience({required List<Member> members}) {
    const gridDelegate = SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 4,
      mainAxisSpacing: 20,
      crossAxisSpacing: 30,
      childAspectRatio: 0.7,
    );

    return MemberGridView(
      members: members,
      gridDelegate: gridDelegate,
      size: (width: 50, height: 50),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: gridDelegate,
        itemCount: members.length,
        itemBuilder: (_, index) => Column(
          children: [
            ImageContainer(
              width: size.width,
              height: size.height,
              image: members[index].profilePicture,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.stars,
                  color: Colors.green,
                  size: 15,
                ),
                Text(
                  ' ${members[index].name.split(' ')[0]}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
