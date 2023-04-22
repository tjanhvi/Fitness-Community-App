import 'package:flutter/material.dart';

class Advertisement extends StatefulWidget {
  const Advertisement({super.key});

  @override
  State<Advertisement> createState() => AdvertisementState();
}

class AdvertisementState extends State<Advertisement> {
  final _controller = PageController(
    initialPage: 0,
  );
  
  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: upCard(controller: _controller)),
                );
  }
}


class upCard extends StatelessWidget {
  const upCard({
    Key? key,
    required PageController controller,
  })  : _controller = controller,
        super(key: key);

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image: DecorationImage(
          image: AssetImage('assets/images/homepage/subscription.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      height: 100,
      child: PageView(
        scrollDirection: Axis.horizontal,
        controller: _controller,
        children: [
          singleSlideRow(
              imgSrc: "assets/images/homepage/price.png",
              desc: "Get 1 year at just Rs.1000/year",
              title: "Invest in good health for a long term"),
          singleSlideRow(
              imgSrc: "assets/images/homepage/price.png",
              desc: "Get 6 months at just Rs.499/6 months",
              title: "Invest in good health for 6 months"),
          singleSlideRow(
              imgSrc: "assets/images/homepage/price.png",
              desc: "Get 1 year at just Rs.100/month",
              title: "Invest in good health for 1 month"),
        ],
      ),
    );
  }
}

class singleSlideRow extends StatelessWidget {
  final String imgSrc;
  final String desc;
  final String title;
  const singleSlideRow({
    super.key,
    required this.imgSrc,
    required this.desc,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            imgSrc,
            height: 50,
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                desc,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
          Icon(
            Icons.arrow_circle_right_rounded,
            color: Colors.white,
            size: 30,
          )
        ],
      ),
    );
  }
}


