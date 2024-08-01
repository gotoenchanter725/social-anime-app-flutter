import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:senpai/core/widgets/icon_input.dart';
import 'package:senpai/data/path_constants.dart';
import 'package:senpai/screens/avatar_shop/widgets/avatar_search_input.dart';
import 'package:senpai/screens/avatar_shop/widgets/avatar_shop_card_item.dart';
import 'package:senpai/screens/avatar_shop/widgets/avatar_shop_header.dart';
import 'package:senpai/utils/constants.dart';

@RoutePage()
class AvatarShopPage extends StatefulWidget {
  const AvatarShopPage({super.key});

  @override
  State<AvatarShopPage> createState() => _AvatarShopPageState();
}

class _AvatarShopPageState extends State<AvatarShopPage> {
  final List<Map<String, dynamic>> avatarSkins = [
    {
      "name": "Yumeko Jabami",
      "status": "Emote",
      "profile":
          "https://th.bing.com/th/id/OIP.r5Y8R7yn6-0A_mbijVucnQHaHZ?rs=1&pid=ImgDetMain",
      "image": "https://wallpapercave.com/wp/wp7152064.jpg",
      "isNew": true,
    },
    {
      "name": "Satoru Gojo",
      "status": "Buy",
      "profile":
          "https://cdna.artstation.com/p/assets/images/images/053/054/138/large/avetetsuya-studios-alien.jpg?1661309922",
      "image":
          "https://th.bing.com/th/id/OIP.t2-WUEoELg8LjksAZ8dJrgAAAA?rs=1&pid=ImgDetMain",
      "isNew": true,
    },
    {
      "name": "Monkey D. Luffy",
      "status": "Premium",
      "profile":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "image":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "isNew": false,
    },
    {
      "name": "Levi Ackerman",
      "status": "Emote",
      "profile":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "image":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "isNew": false,
    },
    {
      "name": "Drakken Joe",
      "status": "Premium",
      "profile":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "image":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "isNew": false,
    },
    {
      "name": "Tsunade",
      "status": "Emote",
      "profile":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "image":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "isNew": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AvatarShopHeaderWidget(),
              const SizedBox(height: 30),
              const AvatarSearchInput(),
              const SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  itemCount: avatarSkins.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 160 / 273,
                  ),
                  padding: const EdgeInsets.only(top: 20, bottom: 30),
                  itemBuilder: (context, index) =>
                      AvatarShopCardItem(data: avatarSkins[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
