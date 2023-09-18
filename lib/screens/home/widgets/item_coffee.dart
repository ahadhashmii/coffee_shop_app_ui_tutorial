import 'package:flutter/material.dart';

class ItemCoffee extends StatelessWidget {
  final String image;
  const ItemCoffee({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/$image', fit: BoxFit.cover)
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Awesome Coffee', style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  overflow: TextOverflow.ellipsis,
                ), maxLines: 1),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: List.generate(5, (index) =>
                        const Icon(Icons.star, color: Colors.amber, size: 18,)).toList(),
                      ),
                    ),
                    Text('Rs. 200', style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Theme.of(context).colorScheme.primary
                    ),)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
