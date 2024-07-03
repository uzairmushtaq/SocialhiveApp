import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
import 'package:page_transition/page_transition.dart';
import 'package:socialhive/views/featurs/Album/album_post.dart';
import 'package:socialhive/widgets/Album_screen/gallery_header.dart';

class FriendAlbum extends StatelessWidget {
  const FriendAlbum({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          galleryheader(
            context: context,
            tuvalue: '0',
            tovalue: '8',
            username: 'Sahahroz Khalid',
            discrip: 'Tell Your Partner What this Album means to You',
            editable: false,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: StaggeredGridView.countBuilder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              crossAxisCount: 4,
              itemCount: 6, // Change this to a non-zero value to test
              itemBuilder: (BuildContext context, int index) {
                return FocusedMenuHolder(
                  menuWidth: MediaQuery.of(context).size.width * 0.50,
                  blurSize: 5.0,
                  menuItemExtent: 45,
                  menuBoxDecoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                  duration: Duration(milliseconds: 100),
                  animateMenuItems: true,
                  blurBackgroundColor: Colors.black54,
                  openWithTap:
                      false, // Open Focused-Menu on Tap rather than Long Press
                  menuOffset:
                      10.0, // Offset value to show menuItem from the selected item
                  bottomOffsetHeight:
                      80.0, // Offset height to consider, for showing the menu item
                  menuItems: <FocusedMenuItem>[
                    FocusedMenuItem(
                      title: Text("Open"),
                      trailingIcon: Icon(Icons.open_in_new),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Container()),
                        );
                      },
                    ),
                    FocusedMenuItem(
                      title: Text("Share"),
                      trailingIcon: Icon(Icons.share),
                      onPressed: () {},
                    ),
                    FocusedMenuItem(
                      title: Text("Favorite"),
                      trailingIcon: Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                    FocusedMenuItem(
                      title: Text(
                        "Delete",
                        style: TextStyle(color: Colors.redAccent),
                      ),
                      trailingIcon: Icon(
                        Icons.delete,
                        color: Colors.redAccent,
                      ),
                      onPressed: () {},
                    ),
                  ],
                  onPressed: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.fade,
                                child: AlbumPost()));
                      },

                      // child: Hero(
                      //     tag: 'assets/image/image.png',
                      //     child: Image.asset(
                      //       'assets/image/image.png',
                      //       fit: BoxFit.cover,
                      //     )),
                      child: Image.asset(
                        "assets/image/natural-7833800_1280.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
              staggeredTileBuilder: (int index) =>
                  StaggeredTile.count(2, index.isEven ? 2 : 3),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
