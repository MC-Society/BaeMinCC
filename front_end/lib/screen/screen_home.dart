import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Widget foodListButton(String name) {
  return Column(
    children: [
      IconButton(onPressed: () {}, icon: Icon(Icons.ice_skating)),
      Text(name)
    ],
  );
}

Widget foodCard(String name, String img, var width, var height) {
  return GestureDetector(
    onTap: () {
      print('Clicked on $name'); // 카드 클릭 시 메시지 출력
    },
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: width, // 원하는 너비
          height: height, // 원하는 높이
          child: Card(
            color: const Color.fromARGB(255, 246, 247, 255),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12), // 카드와 동일한 둥근 모서리
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start, // 왼쪽 정렬
          children: [
            Text(name + " "),
            Icon(
              Icons.star_rounded,
              size: height * 0.12,
            ),
            Text("4.5")
          ],
        ),
      ],
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            print("뒤로가기 버튼");
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(width * 0.05, width * 0.02,
                width * 0.05, width * 0.02), // 텍스트 주변 여백
            child: Container(
              alignment: Alignment.centerLeft, // 왼쪽 정렬
              child: Text(
                '배달의 민족 \n에서 맛있는 음식을 시켜보요zz',
                style: TextStyle(fontSize: 24), // 텍스트 크기 조정
                textAlign: TextAlign.left, // 왼쪽 정렬
              ),
            ),
          ),
          SizedBox(
            height: height * 0.15,
            child: Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 216, 216, 216), // 배경색 설정
                borderRadius: BorderRadius.circular(20), // 둥근 모서리 설정
              ),
              margin: EdgeInsets.all(width * 0.02),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // 수평 스크롤 가능
                padding: EdgeInsets.all(width * 0.05),
                child: Row(
                  children: [
                    foodListButton("치킨"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("피자"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("회"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("돈까스"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("면"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("치킨"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("피자"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("회"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("돈까스"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("면"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("치킨"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("피자"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("회"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("돈까스"),
                    const SizedBox(width: 10), // 버튼 간 간격
                    foodListButton("면"),
                    const SizedBox(width: 10), // 버튼 간 간격
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            child: Container(
              margin: EdgeInsets.all(width * 0.05),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    foodCard(
                        "BHC 치킨",
                        "https://www.bhc.co.kr/upload/bhc/menu/%ED%95%AB%ED%9B%84%EB%9D%BC%EC%9D%B4%EB%93%9C-%EC%8A%A4%ED%8B%B1_410x271.png",
                        width * 0.43,
                        height * 0.15),
                    foodCard(
                        "장군 쭈꾸미",
                        "https://mblogthumb-phinf.pstatic.net/MjAyMjA4MDhfNiAg/MDAxNjU5OTQxMzM0NzU3.8DmHhl9mDLOO4UUqiUPw4QV5JJfRLYcHCbCYXdw-7EUg.oyNWlMqUgt2-lP8HGnhb4o__Ap_dGu_kX09b6uVk7qog.JPEG.studio32/%EC%9E%A5%EA%B5%B0%EC%AD%88%EA%BE%B8%EB%AF%B8_1-1.jpg?type=w800",
                        width * 0.43,
                        height * 0.15),
                    foodCard(
                        "마왕스족발",
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRA3bV-2cySVNL8cZLuHkLqtXEelHNb-slRw&s",
                        width * 0.43,
                        height * 0.15),
                    foodCard(
                        "덮덮덮밥",
                        "https://cdn.prod.website-files.com/61f363236c4309b56d1ed855/61fc6799a6f5f664ba3d1569_60c15ac2887a03953825f3eb_5f74fe006351e8d589690c16_Petite%252520Taqueria%2525203.jpeg",
                        width * 0.43,
                        height * 0.15),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
