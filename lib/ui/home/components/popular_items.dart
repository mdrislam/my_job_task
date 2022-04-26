

import 'package:flutter/material.dart';

import 'package:my_job_task/ui/gb_widgets/section_tittle.dart';
import 'package:my_job_task/ui/home/components/popular_item_card.dart';




class PopularItems extends StatefulWidget {
  const PopularItems({Key? key}) : super(key: key);

  @override
  State<PopularItems> createState() => _PopularItemsState();
}

class _PopularItemsState extends State<PopularItems> {
  final fooductsList = [
    {
      'name': 'Healthy lunch',
      'qt': 5,
      'price': '20',
      'avgRating': 4.5,
      'image':
          'https://images.immediate.co.uk/production/volatile/sites/30/2013/05/HummusBowl-65a0050.jpg?quality=90&webp=true&resize=300,272'
    },
    {
      'name': 'Food Item 2',
      'qt': 0,
      'price': '20',
      'avgRating': 3.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE3rEwEDqyTsWVD23-Db0ROzWbaBXG90zREw&usqp=CAU'
    },
    {
      'name': ' Healthy Food Item 3',
      'qt': 6,
      'price': '10',
      'avgRating': 1.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-RDn0MZn5gs_kPyCbs4nRaAG3kNgVSAd5xQ&usqp=CAU'
    },
    {
      'name': 'Healthy Food Item 4',
      'qt': 100,
      'price': '40',
      'avgRating': 2.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8P4Wo0EBqaaF5C7MOVLV9Z8RGoQtQiRU6Lg&usqp=CAU'
    },
    {
      'name': 'Food Item 5',
      'qt': 30,
      'price': '20',
      'avgRating': 5.0,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQm5-2DR7TeKSPaaAzxZQ7T_ms6lSKKZMDSXw&usqp=CAU'
    },
    {
      'name': 'Food Item 6',
      'qt': 0,
      'price': '11',
      'avgRating': 2.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTpy05FFjektW8C5o37kLOnaU9Cv6xcOQgMKw&usqp=CAU'
    },
    {
      'name': 'Healthy Food Item 7',
      'qt': 1,
      'price': '9',
      'avgRating': 0.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR90vqJViXhH65udvG-G6-2vMDWPNqN5FWRlg&usqp=CAU'
    },
    {
      'name': 'Food Item 8',
      'qt': 6,
      'price': '2',
      'avgRating': 4.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdtMzL02yMLjBMtVeAOsvbl21TQ9d4nBqJtQ&usqp=CAU'
    },
    {
      'name': 'Healthy Food Item 9',
      'qt': 147,
      'price': '4',
      'avgRating': 1.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTYsv8FZ0LVMZDVAAld-7R2ys3z5EM-8KG2Eg&usqp=CAU'
    },
    {
      'name': 'Food Item 10',
      'qt': 0,
      'price': '7',
      'avgRating': 3.5,
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqv5snFXBg6qQ6QZyEBlyQGOzdGFKVj6Tqvg&usqp=CAU'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SectionTittle(
            text: 'Popular Item', press: () {}, clickText: 'VIEW ALL'),
        const SizedBox(
          height: 15.0,
        ),
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            itemCount: fooductsList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) =>
                PopularItemCard(item: fooductsList[index])),
      ],
    );
  }
}
