import 'package:coffee_shop_app_ui_tutorial/screens/home/widgets/item_coffee.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250,
            padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
            decoration: const BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(150)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: const TextField(
                            decoration: InputDecoration(
                              hintText: 'Search a coffee...',
                              border: InputBorder.none
                            ),
                          ),
                        )
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).colorScheme.primary
                      ),
                      child: const Icon(CupertinoIcons.search, color: Colors.white),
                    )
                  ],
                ),
                const Spacer(),
                Text('Search your', style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  color: Colors.white,
                  letterSpacing: 1,
                  fontStyle: FontStyle.italic
                )),
                Text('Favorite Coffee', style: Theme.of(context).textTheme.displayMedium?.copyWith(
                    color: Colors.white,
                )),
                const SizedBox(height: 30)
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              crossAxisCount: 2,
              childAspectRatio: 3/4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 20,
              children: const [
                ItemCoffee(image: 'item1.jpg'),
                ItemCoffee(image: 'item2.jpg'),
                ItemCoffee(image: 'item1.jpg'),
                ItemCoffee(image: 'item2.jpg'),
                ItemCoffee(image: 'item1.jpg'),
                ItemCoffee(image: 'item2.jpg'),
                ItemCoffee(image: 'item1.jpg'),
                ItemCoffee(image: 'item2.jpg'),
                ItemCoffee(image: 'item1.jpg'),
                ItemCoffee(image: 'item2.jpg'),
                ItemCoffee(image: 'item1.jpg'),
                ItemCoffee(image: 'item2.jpg'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
