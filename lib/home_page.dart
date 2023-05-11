import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text("Vamsi", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Spacer(),
              Container(
                height: 22,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(5)),
                child: const Icon(Icons.home, size: 16),
              ),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Women",
                    style: TextStyle(color: Colors.black87),
                  )),
              const Spacer(),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Men",
                    style: TextStyle(color: Colors.black87),
                  )),
              const Spacer(flex: 3),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
                  "https://media.gettyimages.com/id/1293366109/photo/this-one-match-perfect-with-me.jpg?s=612x612&w=gi&k=20&c=VsfjlyJEXRVmynhKSU882MitpzYR7Po4j3W9x9yWNck=",
                  "https://media.istockphoto.com/id/1446098147/photo/shopping-happy-and-portrait-of-customer-with-bag-after-shopping-spree-buying-retail-fashion.jpg?b=1&s=170667a&w=0&k=20&c=lj6nhPuBfnl3PLVMpr4GlDzhKtlQPo2X0A3LpIgZwDw=",
                  "https://images.hindustantimes.com/img/2022/08/25/1600x900/pexels-antoni-shkraba-7081113_1661414759537_1661414794423_1661414794423.jpg",
                  "https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZmFzaGlvbnxlbnwwfHwwfHw%3D&w=1000&q=80",
                ]
                    .map((e) => Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                          child: AspectRatio(
                              aspectRatio: 4 / 2,
                              child: Image.network(e, fit: BoxFit.fill)),
                        ))
                    .toList(),
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home, color: Colors.red.shade200)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.account_circle))
              ],
            ),
          )
        ],
      ),
    );
  }
}
