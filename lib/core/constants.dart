import 'package:market_app/data/models/product_model.dart';
import 'package:market_app/data/models/user_model.dart';

const logoName = "LOGO";
const dummyBanners = [
  "assets/images/banner_1.png",
  "assets/images/banner_2.png",
  "assets/images/banner_3.png",
  "assets/images/banner_4.png",
];

final dummyUsers = [
  for (int i = 0; i < 9; i++)
    UserModel(
      username: 'Name0${i + 1}',
      avatar: 'assets/images/avt_name0${i + 1}.png',
      description: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
      isTop: i == 0,
    )
];

final dummyTopProduct = [
  ProductModel(
      name: 'LG전자 스탠바이미 27ART10AKPL (스탠바이미)',
      descriptions:
          '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요, 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다',
      image: 'assets/images/img_monitor.png',
      rating: 4.89,
      ratingTop: 1,
      ratingCount: 216,
      tags: 'LG전자,편리성'),
  ProductModel(
      name: 'LG전자  울트라HD 75UP8300KNA (스탠드)',
      descriptions: '화면 잘 나오고... 리모컨 기능 좋습니다,넷플 아마존 등 버튼하나로 바로 접속 되고디스플레이는',
      image: 'assets/images/img_big_monitor.png',
      rating: 4.89,
      ratingTop: 2,
      ratingCount: 216,
      tags: 'LG전자,편리성'),
  ProductModel(
      name: '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
      descriptions: '반응속도 및 화질이나 여러면에서도 부족함을,중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와',
      image: 'assets/images/img_smart_tv.jpg',
      rating: 3.98,
      ratingTop: 3,
      ratingCount: 98,
      tags: '라익미,가성비'),
];
