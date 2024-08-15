import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
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
      "product_id": 1,
    },
    {
      "product_id": 2,
      "name": "Satoru Gojo",
      "status": "Buy",
      "profile":
          "https://cdna.artstation.com/p/assets/images/images/053/054/138/large/avetetsuya-studios-alien.jpg?1661309922",
      "image":
          "https://th.bing.com/th/id/OIP.t2-WUEoELg8LjksAZ8dJrgAAAA?rs=1&pid=ImgDetMain",
      "isNew": true,
    },
    {
      "product_id": 3,
      "name": "Monkey D. Luffy",
      "status": "Premium",
      "profile":
          "https://th.bing.com/th/id/R.2c49c9cf2c5248cf4f5e8661b8d3af4f?rik=G8yDhr4srExPpQ&pid=ImgRaw&r=0",
      "image":
          "https://th.bing.com/th/id/R.edf5a7600628b4500e94d4e404af407b?rik=POg5zdgXd%2bxSVg&riu=http%3a%2f%2fm.gettywallpapers.com%2fwp-content%2fuploads%2f2023%2f05%2fJapanese-Anime-Boy-Profile-Picture.jpg&ehk=zq6b58zWRPs0qH%2bo32Us8NSSP%2ba4aFfr7uXTP9lUmHY%3d&risl=&pid=ImgRaw&r=0",
      "isNew": false,
    },
    {
      "product_id": 4,
      "name": "Levi Ackerman",
      "status": "Emote",
      "profile":
          "https://i.pinimg.com/originals/21/f4/46/21f4466cdcd1f132aa5cf9fe4c8b529d.jpg",
      "image":
          "https://i.pinimg.com/originals/36/95/71/369571e6e7e38b37750edfa91c22a3cc.jpg",
      "isNew": false,
    },
    {
      "product_id": 5,
      "name": "Drakken Joe",
      "status": "Premium",
      "profile":
          "https://i.pinimg.com/736x/c8/d1/db/c8d1dbd23718b07d374b8b891970117a.jpg",
      "image":
          "https://wallpapers.com/images/hd/matching-anime-profile-pictures-1080-x-1080-diw0d7jbom3sn7o3.jpg",
      "isNew": false,
    },
    {
      "name": "Tsunade",
      "status": "Buy",
      "profile":
          "https://th.bing.com/th/id/OIP.rFtW3ETt5PdoNgBaKTHLyQHaF7?rs=1&pid=ImgDetMain",
      "image": "https://cdn.wallpapersafari.com/6/86/JAvgzR.jpg",
      "isNew": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $constants.palette.darkBlue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AvatarShopHeaderWidget(),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: AvatarSearchInput(),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
            ),
          ],
        ),
      ),
    );
  }
}
